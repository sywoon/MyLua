"use strict";
var __bundle__ = (() => {
  var __defProp = Object.defineProperty;
  var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
  var __getOwnPropNames = Object.getOwnPropertyNames;
  var __hasOwnProp = Object.prototype.hasOwnProperty;
  var __export = (target, all) => {
    for (var name in all)
      __defProp(target, name, { get: all[name], enumerable: true });
  };
  var __copyProps = (to, from, except, desc) => {
    if (from && typeof from === "object" || typeof from === "function") {
      for (let key of __getOwnPropNames(from))
        if (!__hasOwnProp.call(to, key) && key !== except)
          __defProp(to, key, { get: () => from[key], enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable });
    }
    return to;
  };
  var __toCommonJS = (mod) => __copyProps(__defProp({}, "__esModule", { value: true }), mod);
  var __decorateClass = (decorators, target, key, kind) => {
    var result = kind > 1 ? void 0 : kind ? __getOwnPropDesc(target, key) : target;
    for (var i = decorators.length - 1, decorator; i >= 0; i--)
      if (decorator = decorators[i])
        result = (kind ? decorator(target, key, result) : decorator(result)) || result;
    if (kind && result)
      __defProp(target, key, result);
    return result;
  };

  // INDEX:bundle.js
  var bundle_exports = {};
  __export(bundle_exports, {
    AdventureWorldComp: () => AdventureWorldComp,
    EnvironmentConfigComp: () => EnvironmentConfigComp,
    FlowMapMaterialComp: () => FlowMapMaterialComp,
    IKTargetsComp: () => IKTargetsComp,
    ListTweenComp: () => ListTweenComp,
    PosTweenComp: () => PosTweenComp,
    ScreenDissolveComp: () => ScreenDissolveComp
  });

  // assets/res/d3/shader/scenecommon.glsl
  var scenecommon_default = "//AmbientColor\r\nuniform vec4 u_AmbientColor;\r\nuniform float u_ActiveAmbientColor;\r\n//VTLight\r\nuniform vec4 u_VTLightColor;\r\nuniform vec4 u_PlayerPos;\r\nuniform float u_ActiveVTLight;\r\n//Weather\r\nuniform vec4 u_WeatherParams;\r\nuniform float u_ActiveWeather;\r\n\r\nuniform sampler2D u_CloudMask;\r\nuniform vec4 u_CloudParams0;//1/size offset\r\nuniform vec4 u_CloudParams1;//speed\r\nuniform float u_ActiveCloudMask;\r\n\r\nvec3 GammaCorrect(in vec3 color, float gammaValue)\r\n{\r\n    return pow(color, vec3(gammaValue));\r\n}\r\n\r\nvec4 GammaCorrect(in vec4 color)\r\n{\r\n    // todo color gamut gamma value\r\n    // default sRGB\r\n    #ifdef RENDERGAMMA\r\n        float gammaValue = 1.0 / 2.2;\r\n        return vec4(GammaCorrect(color.rgb, gammaValue), color.a);\r\n    #else\r\n        return color;\r\n    #endif\r\n}\r\n\r\nvec4 outputCorrect(in vec4 color)\r\n{\r\n    #ifdef USE_GAMMA_IN_3D\r\n        //linearToGamma\r\n        float gammaValue = 1.0 / 2.2;\r\n        return vec4(GammaCorrect(color.rgb, gammaValue), color.a);     \r\n    #endif // GAMMACORRECT\r\n\r\n    return color;\r\n}\r\n\r\nvec4 SampleTexture2D(sampler2D tex , vec2 uv)\r\n{\r\n    return GammaCorrect( texture2D(tex , uv) );\r\n}\r\n\r\nfloat attenuation(in float dis, in float invLightRadius)\r\n{\r\n    return 1.0 / (1.0 + (1.0 / invLightRadius) * dis + 5.0 * (dis * dis));\r\n\r\n    // float fRatio = clamp(dis * invLightRadius, 0.0, 1.0);\r\n    // fRatio *= fRatio;\r\n    // return 1.0 / (1.0 + 25.0 * fRatio) * clamp(4.0 * (1.0 - fRatio), 0.0, 1.0);\r\n}\r\n\r\nfloat ApplyCloudMask(vec3 pos , float activeMask)\r\n{\r\n    float mask = 1.0;\r\n    float dis = 50.0;\r\n    if(u_ActiveCloudMask == 1.0 && activeMask == 1.0)\r\n    {\r\n        vec2 uv = (pos.xz - u_CloudParams0.zw);\r\n        float v = 1.0 - smoothstep(dis , dis * 1.1 , abs(u_PlayerPos.z - pos.z) - dis );\r\n        uv *= u_CloudParams0.xy;\r\n        uv += u_CloudParams1.xy * (u_Time - u_CloudParams1.w);\r\n\r\n        float y_mod = mod(uv.y, 3.0);\r\n    \r\n        // 计算三个区间的权重系数（无分支优化）\r\n        float coeff_r = 1.0 - step(1.0, y_mod);        // y < 1 时为 1，否则为 0\r\n        float coeff_g = step(1.0, y_mod) - step(2.0, y_mod); // 1 ≤ y < 2 时为 1\r\n        float coeff_b = step(2.0, y_mod);              // y ≥ 2 时为 1\r\n        \r\n        // 从贴图读取颜色\r\n        vec4 texcolor = (SampleTexture2D(u_CloudMask, uv));\r\n        \r\n        // 根据系数混合颜色通道\r\n        float final_value = \r\n            coeff_r * texcolor.r + \r\n            coeff_g * texcolor.g + \r\n            coeff_b * texcolor.b;\r\n        mask = max(u_CloudParams1.z , 1.0 - final_value * v);\r\n    }\r\n    return GammaCorrect(vec4(mask)).r;\r\n}\r\n\r\nvec3 ApplyWeather(vec3 color)\r\n{\r\n    vec3 tempColor = color;\r\n    if(u_ActiveWeather == 1.0)//rain\r\n    {\r\n        tempColor *= 0.5;//test code\r\n    }\r\n    return tempColor;\r\n}\r\n\r\nvec3 FlowingLightEffect(vec2 uv, float angle, float width, float gap, float mask, vec3 lightColor, float time) {\r\n    // 计算流光的方向\r\n    vec2 direction = vec2(cos(angle), sin(angle));\r\n    \r\n    // 投影 UV 到流光方向\r\n    float projectedUv = dot(uv, direction);\r\n    \r\n    // 计算流光的位置，考虑间隔\r\n    float cycleLength = width + gap; // 每个循环的总长度\r\n    float flowPosition = mod(projectedUv - time, cycleLength);\r\n    \r\n    // 判断流光是否在宽度范围内\r\n    float isInsideWidth = step(flowPosition, width); \r\n    \r\n    // 边缘渐变处理\r\n    float gradient = smoothstep(0.0, 0.05, flowPosition) * (1.0 - smoothstep(width - 0.05, width, flowPosition));\r\n    \r\n    // 整体暗色与流光亮色结合\r\n    vec3 baseColor = vec3(0.0); // 整体暗色\r\n    vec3 resultColor = mix(baseColor, lightColor * gradient * isInsideWidth, mask);\r\n\r\n    return resultColor;\r\n}\r\n\r\nvec3 ApplyAmbientColor(vec3 color , vec3 pos , float activeMask)// , float ztest = -99)\r\n{\r\n    vec3 basecolor = color;\r\n    color = ApplyWeather(color);\r\n    color *= ApplyCloudMask(pos , activeMask);\r\n    vec3 tempColor = color;\r\n    if(u_ActiveAmbientColor > 0.0)\r\n    {\r\n        tempColor = mix(color , color * GammaCorrect(u_AmbientColor).rgb , u_AmbientColor.a);\r\n    }\r\n    if(u_ActiveVTLight > 0.0)\r\n    {\r\n        float dis = distance(u_PlayerPos.xyz , pos);\r\n        tempColor += attenuation( dis , u_PlayerPos.w) * GammaCorrect(u_VTLightColor).rgb * (u_VTLightColor.a * 20.0) * basecolor;\r\n        //float attenuation = 1.0 / (light.constant + light.linear * distance + light.quadratic * (distance * distance));\r\n    }\r\n    return tempColor;\r\n}\r\n\r\nvec4 ApplyDissolve(sampler2D u_DissTex , vec2 uv , vec3 mainColor , float cutOff , float dissInt , float dissAdd , vec4 dissCol)\r\n{\r\n    vec4 dissColor = texture2D(u_DissTex, uv);\r\n    \r\n    // 溶解计算\r\n    float noise = step(dissInt, dissColor.r);\r\n    float noiseBig = step(dissInt, clamp(dissColor.r + dissAdd, 0.0, 1.0));\r\n    float noiseOut = noiseBig - noise;\r\n    \r\n    // 颜色混合\r\n    vec3 finalRGB = mix(mainColor, dissCol.rgb, noiseOut);\r\n    float opacity = noiseBig;\r\n    \r\n    // Alpha裁剪\r\n    if(opacity < cutOff) discard;\r\n    \r\n    return vec4(finalRGB, opacity);\r\n}\r\n\r\n// #ifdef FOG\r\n// vec3 scenUnlitFog(in vec3 color)\r\n// {\r\n//     float lerpFact = getFogFactor();\r\n// 	#ifdef ADDTIVEFOG\r\n//     lerpFact = clamp(lerpFact, 0.0, 1.0);\r\n//     return mix(vec3(0.0), color, lerpFact);\r\n// 	#else\r\n//     lerpFact = clamp(lerpFact, 0.0, 1.0);\r\n//     return mix(u_FogColor.rgb, color, lerpFact);\r\n// 	#endif // ADDTIVEFOG\r\n// }\r\n// #endif";

  // assets/res/comp/AddPass.ts
  var Material = Laya.Material;
  var Shader3D = Laya.Shader3D;
  var RenderState = Laya.RenderState;
  var { regClass, property } = Laya;
  var AddPass = class extends Laya.Script {
    constructor() {
      super();
    }
    onAwake() {
    }
    onEnable() {
      FakeShadowMaterial.initShader();
      FakeShadowMaterial.pass.pipelineMode = "Forward";
      this.render = this.owner.getComponent(Laya.BaseRender);
      this.render.sharedMaterial.renderQueue = 3e3;
      this.render.sharedMaterial.blend = Laya.BlendType.BLEND_ENABLE_SEPERATE;
      this.render.sharedMaterial.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
      this.render.sharedMaterial.depthWrite = true;
      this.render.sharedMaterial.stencilRef = this.stencilRef;
    }
    onDisable() {
      FakeShadowMaterial.pass.pipelineMode = "Other";
    }
  };
  __decorateClass([
    property(Laya.ShaderData)
  ], AddPass.prototype, "shader", 2);
  __decorateClass([
    property(Number)
  ], AddPass.prototype, "stencilRef", 2);
  AddPass = __decorateClass([
    regClass("UdB78-hERUic0XXuVeno2A")
  ], AddPass);
  var _OutlineMaterial = class _OutlineMaterial extends Material {
    static initShader() {
      if (_OutlineMaterial.init)
        return true;
      var s3d = Shader3D.find("sceneRole");
      if (!s3d)
        return false;
      Shader3D.addInclude("scenecommon.glsl", scenecommon_default);
      _OutlineMaterial.init = true;
      var ss = s3d.getSubShaderAt(0);
      var pass1 = _OutlineMaterial.getAddPass(ss);
      pass1.statefirst = true;
      pass1.renderState.cull = RenderState.CULL_FRONT;
      this.pass = pass1;
      return true;
    }
    static getAddPass(ss) {
      const vs = `
// attribute vec4 a_Position;
// attribute vec3 a_Normal;

// uniform mat4 u_MvpMatrix;

#include "Sprite3DVertex.glsl";

#include "VertexCommon.glsl";
#include "Camera.glsl";

#ifdef DISSOLVE
varying vec2 v_Dissuv;
#endif // UV

void main()
{

    Vertex vertex;
    getVertexParams(vertex);

    vec3 dir;

#ifdef TANGENT
    dir = vertex.tangentOS.xyz;
#else
    dir = normalize(vertex.normalOS);
#endif // TANGENT

    #ifdef DISSOLVE
        v_Dissuv = transformUV(vertex.texCoord0, u_DissTex_ST);
    #endif // UV

    mat4 worldMat = getWorldMatrix();
    mat3 normalMat = transpose(inverse(mat3(worldMat)));
    vec3 normalWS = (normalMat * dir).xyz;
    normalMat = transpose(inverse(mat3(u_View)));
    dir = (normalMat * normalWS).xyz;
    mat2 normalP = transpose(inverse(mat2(u_Projection)));
    dir.xy = (normalP * dir.xy);
    vec4 pos = (worldMat * vec4(vertex.positionOS, 1.0));
    vec3 v_wPos = pos.xyz / pos.w;
    //color = dir;
    vec3 viewDir = normalize(u_CameraPos - v_wPos);
    gl_Position = (u_Projection * (u_View * vec4(v_wPos, 1.0)));
    gl_Position.xy += dir.xy * u_OutlineScale * (1.0 / u_Viewport.zw) * gl_Position.w;
    gl_Position = remapPositionZ(gl_Position);
}`;
      const fs = `
#include "Scene.glsl";
#include "scenecommon.glsl";

#ifdef DISSOLVE
varying vec2 v_Dissuv;
#endif // UV

void main() 
{ 
    vec3 finalColor = u_OutlineColor.rgb * u_OutlineLightness;
    #ifdef DISSOLVE 
        finalColor = ApplyDissolve(u_DissTex , v_Dissuv , finalColor , u_AlphaTestValue , u_DissInt , u_DissAdd , u_DissCol).rgb;
    #endif 
    gl_FragColor = vec4(finalColor , u_OutlineColor.a); 
}`;
      return ss.addShaderPass(vs, fs);
    }
    constructor() {
      super();
      this.setShaderName("MultiplePassOutlineShader");
    }
  };
  _OutlineMaterial.init = false;
  var OutlineMaterial = _OutlineMaterial;
  var _FakeShadowMaterial = class _FakeShadowMaterial extends Material {
    static initShader() {
      if (_FakeShadowMaterial.init)
        return true;
      var s3d = Shader3D.find("sceneRole");
      if (!s3d)
        return false;
      _FakeShadowMaterial.init = true;
      var ss = s3d.getSubShaderAt(0);
      var pass1 = _FakeShadowMaterial.getAddPass(ss);
      pass1.statefirst = true;
      pass1.renderState.cull = RenderState.CULL_BACK;
      pass1.renderState.depthWrite = true;
      pass1.renderState.stencilTest = Laya.RenderState.STENCILTEST_NOTEQUAL;
      pass1.renderState.stencilWrite = true;
      pass1.renderState.depthTest = RenderState.DEPTHTEST_LESS;
      pass1.renderState.stencilRef = 2;
      pass1.renderState.stencilOp = new Laya.Vector3(Laya.RenderState.STENCILOP_KEEP, Laya.RenderState.STENCILOP_KEEP, Laya.RenderState.STENCILOP_REPLACE);
      this.pass = pass1;
      return true;
    }
    static getAddPass(ss) {
      const vs = `
    #include "Math.glsl";
    #include "Scene.glsl";
    #include "SceneFogInput.glsl";
    #include "Camera.glsl";
    #include "Sprite3DVertex.glsl";
    #include "VertexCommon.glsl";

	varying vec4 v_Color;
	varying vec2 v_Texcoord;

	vec4 ShadowProjectPos(vec4 vertPos) {
		// 世界坐标计算
		vec4 worldPos = getWorldMatrix() * vertPos;
		// worldPos.xyz /= worldPos.w;
		vec3 dir = normalize(u_Dir);
		// 阴影投射计算
		vec4 shadowPos;
		float z = length(u_CameraPos - u_WorldMat[3].xyz);
		float scale = 10.0;
		float height = u_GroundHeight - (1.0 - exp(-z / scale)) * 0.1;
		shadowPos.y = min(worldPos.y, height);
		shadowPos.xz = worldPos.xz - dir.xz * 
			max(0.0, worldPos.y - height) / dir.y;
		shadowPos.w = worldPos.y - height;
		return shadowPos;
	}

	void main() {
		// 阴影位置计算
		vec4 shadowPos = ShadowProjectPos(a_Position);
        Vertex vertex;
        getVertexParams(vertex);
        mat4 worldMat = getWorldMatrix();
        vec4 pos = (worldMat * vec4(vertex.positionOS, 1.0));// * 1.1;
        gl_Position = getPositionCS(shadowPos.xyz);
		gl_Position = remapPositionZ(gl_Position);
		gl_Position.z += u_Offset;
		// 阴影衰减计算
		vec3 center = vec3(worldMat[3].x, u_GroundHeight, worldMat[3].z);
		float falloff = u_ShadowFalloff / shadowPos.w;
		
		v_Color = u_ShadowColor;
		v_Color.a *= falloff;
		v_Texcoord = a_Texcoord0;
	}`;
      const fs = `
	precision highp float;

	varying vec4 v_Color;

	void main() {		
		gl_FragColor = v_Color;
	}`;
      return ss.addShaderPass(vs, fs);
    }
    constructor() {
      super();
      this.setShaderName("FakeShadowShader");
    }
  };
  _FakeShadowMaterial.init = false;
  var FakeShadowMaterial = _FakeShadowMaterial;

  // assets/res/comp/EnvironmentConfigComp.ts
  var { regClass: regClass2, property: property2 } = Laya;
  var EnvironmentConfigComp = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.lightColor = new Laya.Color(Laya.Color.YELLOW.r, Laya.Color.YELLOW.g, Laya.Color.YELLOW.b, 0.5);
      this.range = 1.5;
      this.currentAmbientColor = new Laya.Color();
      this.currentLightColor = new Laya.Color();
      this._playerParams = new Laya.Vector4();
      this._weatherParams = new Laya.Vector4();
      this._cloudParams0 = new Laya.Vector4();
      this._cloudParams1 = new Laya.Vector4();
      this._mapSize = new Laya.Vector2(100, 100);
      this._lastActiveCloudMask = false;
      this.color0 = new Laya.Color(0.91, 0.77, 0.95);
      this.color1 = new Laya.Color(1, 1, 1);
      this.color2 = new Laya.Color(1, 0.76, 0.62);
      this.color3 = new Laya.Color(0.345, 0.43, 0.802);
      this.activeCloudMask = true;
    }
    // 改成完全配置,不再读取    
    // private _url : string = "res/d3/scene/xinguaji/uiRT.lmat";
    onEnable() {
      this.init();
      this._time = Laya.timer._getNowData() / 1e3;
    }
    initAddPass() {
      if (FakeShadowMaterial.initShader()) {
        Laya.timer.clear(this, this.initAddPass);
      }
    }
    onDisable() {
    }
    // onUpdate(): void 
    // {
    //     var delta: number = Laya.timer.currTimer / 1000;
    //     this._time += delta;
    // }
    init() {
      this._colorArr = [
        this.color0,
        this.color1,
        this.color2,
        this.color3
      ];
      this._cloudMasks = [
        this.mask1,
        this.mask2,
        this.mask3,
        this.mask4,
        this.mask5
      ];
      this._scene = this.owner.scene;
      this._cloudParams0.x = 1 / this._mapSize.x;
      this._cloudParams0.y = 1 / this._mapSize.y;
      this._cloudParams0.z = -this._mapSize.x / 2;
      this._cloudParams0.w = 0;
      this._cloudParams1.x = 0;
      this._cloudParams1.y = -0.02;
      this._cloudParams1.z = 0.5;
      this._cloudParams1.w = 1;
      this._updateCloudMask();
    }
    _updateCloudMask() {
      this._scene.setGlobalShaderValue("u_CloudMask", Laya.ShaderDataType.Texture2D, this._cloudMasks[0]);
      this._scene.setGlobalShaderValue("u_CloudParams0", Laya.ShaderDataType.Vector4, this._cloudParams0);
      this._scene.setGlobalShaderValue("u_CloudParams1", Laya.ShaderDataType.Vector4, this._cloudParams1);
    }
    _updateVTLight() {
      this._scene.setGlobalShaderValue("u_VTLightColor", Laya.ShaderDataType.Color, this.currentLightColor);
      this._scene.setGlobalShaderValue("u_ActiveVTLight", Laya.ShaderDataType.Float, this.currentActiveLight);
    }
    SetCloudOffset(offset = 0) {
      this._cloudParams0.w += offset;
      this._scene.setGlobalShaderValue("u_CloudParams0", Laya.ShaderDataType.Vector4, this._cloudParams0);
    }
    updateCloudMask(active, index) {
      active && (active = this.activeCloudMask);
      this._lastActiveCloudMask = active;
      let mask = this._cloudMasks[index];
      active && (active = mask != null);
      this._scene.setGlobalShaderValue("u_ActiveCloudMask", Laya.ShaderDataType.Float, active ? 1 : 0);
      this._scene.setGlobalShaderValue("u_CloudMask", Laya.ShaderDataType.Texture2D, mask);
    }
    updateWeatherParams(weather) {
      this._weatherParams.x = weather - 1;
      this._scene.setGlobalShaderValue("u_WeatherParams", Laya.ShaderDataType.Vector4, this._weatherParams);
      this._scene.setGlobalShaderValue("u_ActiveWeather", Laya.ShaderDataType.Float, weather - 1);
    }
    updateVTLightParams(pos) {
      this._playerParams.x = pos.x;
      this._playerParams.y = pos.y + 0.5;
      this._playerParams.z = pos.z;
      this._playerParams.w = 1 / this.range;
      this._scene.setGlobalShaderValue("u_PlayerPos", Laya.ShaderDataType.Vector4, this._playerParams);
    }
    _updateSceneAmbientColor() {
      if (!this._scene || this._scene.destroyed)
        return;
      if (this.bgMat) {
        this.bgMat.setFloat("u_Lerp", this.currentActiveLight);
      }
      this._scene.setGlobalShaderValue("u_ActiveAmbientColor", Laya.ShaderDataType.Float, 1);
      this._scene.setGlobalShaderValue("u_AmbientColor", Laya.ShaderDataType.Color, this.currentAmbientColor);
      this._updateVTLight();
    }
    setTargetColor(tween, time, activeLight) {
      this._setTargetColor(tween, this._colorArr[time], activeLight ? this.lightColor : Laya.Color.CLEAR, activeLight ? 1 : 0);
    }
    _setTargetColor(tween, lerpAmbientColor, lerpLightColor, active) {
      if (tween) {
        Laya.Tween.to(this.currentAmbientColor, lerpAmbientColor, 2e3, Laya.Ease.linearIn, Laya.Handler.create(this, this._tweenOver));
        Laya.Tween.to(this.currentLightColor, lerpLightColor, 2e3, Laya.Ease.linearIn);
        Laya.Tween.to(this, { currentActiveLight: active }, 2e3, Laya.Ease.linearIn);
        Laya.timer.frameLoop(1, this, this._updateSceneAmbientColor);
        this._countDown++;
      } else {
        lerpAmbientColor.cloneTo(this.currentAmbientColor);
        lerpLightColor.cloneTo(this.currentLightColor);
        this.currentActiveLight = active;
        this._updateSceneAmbientColor();
        if (this.bgMat) {
          this.bgMat.setFloat("u_Lerp", active);
        }
      }
    }
    _tweenOver() {
      this._countDown--;
      if (this._countDown == 0)
        Laya.timer.clear(this, this._updateSceneAmbientColor);
    }
    clone(tar) {
      this.mask1 = tar.mask1;
      this.mask2 = tar.mask2;
      this.mask3 = tar.mask3;
      this.mask4 = tar.mask4;
      this.mask5 = tar.mask5;
      tar.color0.cloneTo(this.color0);
      tar.color1.cloneTo(this.color1);
      tar.color2.cloneTo(this.color2);
      tar.color3.cloneTo(this.color3);
      this.activeCloudMask = tar.activeCloudMask;
      this.bgMat = tar.bgMat;
    }
  };
  __decorateClass([
    property2(Laya.Color)
  ], EnvironmentConfigComp.prototype, "lightColor", 2);
  __decorateClass([
    property2(Number)
  ], EnvironmentConfigComp.prototype, "range", 2);
  __decorateClass([
    property2(Laya.Texture2D)
  ], EnvironmentConfigComp.prototype, "mask1", 2);
  __decorateClass([
    property2(Laya.Texture2D)
  ], EnvironmentConfigComp.prototype, "mask2", 2);
  __decorateClass([
    property2(Laya.Texture2D)
  ], EnvironmentConfigComp.prototype, "mask3", 2);
  __decorateClass([
    property2(Laya.Texture2D)
  ], EnvironmentConfigComp.prototype, "mask4", 2);
  __decorateClass([
    property2(Laya.Texture2D)
  ], EnvironmentConfigComp.prototype, "mask5", 2);
  __decorateClass([
    property2(Laya.Color)
  ], EnvironmentConfigComp.prototype, "color0", 2);
  __decorateClass([
    property2(Laya.Color)
  ], EnvironmentConfigComp.prototype, "color1", 2);
  __decorateClass([
    property2(Laya.Color)
  ], EnvironmentConfigComp.prototype, "color2", 2);
  __decorateClass([
    property2(Laya.Color)
  ], EnvironmentConfigComp.prototype, "color3", 2);
  __decorateClass([
    property2(Boolean)
  ], EnvironmentConfigComp.prototype, "activeCloudMask", 2);
  __decorateClass([
    property2(Laya.Material)
  ], EnvironmentConfigComp.prototype, "bgMat", 2);
  EnvironmentConfigComp = __decorateClass([
    regClass2("jlyDHS2iRkCHeHKwMzcEWg")
  ], EnvironmentConfigComp);

  // assets/res/comp/AdventureWorldComp.ts
  var { regClass: regClass3, property: property3 } = Laya;
  var AdventureWorldComp = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.speed = 0.1;
      this.showDis = 50;
      this._isMoving = false;
      this.pause = false;
      //组件被启用后执行，例如节点被添加到舞台后
      //onEnable(): void {}
      //组件被禁用时执行，例如从节点从舞台移除后
      //onDisable(): void {}
      //第一次执行update之前执行，只会执行一次
      //onStart(): void {}
      //手动调用节点销毁时执行
      //onDestroy(): void {}
      this._tmpColor = new Laya.Color(1, 1, 1, 1);
    }
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake() {
      this._bg = this.owner.getChildByName("bg");
      this._moveNode = this.owner.getChildByName("move");
      this._blocks = this.owner.getChildByName("blocks");
      this._adds = this.owner.getChildByName("adds");
      this._mats = [];
      for (let i = 0; i < this._adds.numChildren; i++) {
        let c = this._adds.getChildAt(i).getChildAt(0);
        this._mats.push(c.getComponent(Laya.MeshRenderer).material);
      }
      if (this.isPreview)
        this._isMoving = true;
      this.env = this.owner.getComponent(EnvironmentConfigComp);
    }
    // 每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    onUpdate() {
      if (!this._isMoving || this.pause)
        return;
      let pos = this._moveNode.transform.position;
      pos.z -= this.speed;
      if (pos.z < -70) {
        this.env.SetCloudOffset(70);
        pos.z += 70;
        let num2 = this._blocks.numChildren;
        for (let i = 0; i < num2; i++) {
          let c = this._blocks.getChildAt(i);
          let pos2 = c.transform.position;
          pos2.z += 70;
          c.transform.position = pos2;
        }
        num2 = this._adds.numChildren;
        for (let i = 0; i < num2; i++) {
          let c = this._adds.getChildAt(i);
          let pos2 = c.transform.position;
          pos2.z += 70;
          c.transform.position = pos2;
        }
        if (this._event) {
          let p = this._event.transform.position;
          p.z += 70;
          this._event.transform.position = p;
        }
        if (this._enmey) {
          for (let e of this._enmey) {
            let pos2 = e.transform.position;
            pos2.z += 70;
            e.transform.position = pos2;
          }
        }
      }
      this._moveNode.transform.position = pos;
      this._bg.transform.position = pos;
      let num = this._blocks.numChildren;
      for (let i = 0; i < num; i++) {
        let c = this._blocks.getChildAt(i);
        let pos2 = c.transform.position;
        if (pos2.z > pos.z) {
          pos2.z -= num * 70;
          c.transform.position = pos2;
        }
      }
      num = this._adds.numChildren;
      for (let i = 0; i < num; i++) {
        let c = this._adds.getChildAt(i);
        let max = -Number(c.name);
        let pos2 = c.transform.position;
        let dir = pos2.z - pos.z;
        if (dir < max + this.showDis) {
          let mat = this._mats[i];
          if (dir + this.speed >= max + this.showDis) {
            mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_CUTOUT;
          } else {
            this._tmpColor.a = (dir + this.speed - max) / this.showDis;
            mat.setColor("u_AlbedoColor", this._tmpColor);
          }
        }
        if (pos2.z > pos.z) {
          pos2.z = pos.z + max;
          let mat = this._mats[i];
          mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
          this._tmpColor.a = 0;
          mat.setColor("u_AlbedoColor", this._tmpColor);
          c.transform.position = pos2;
        }
      }
    }
    startMove() {
      this._isMoving = true;
    }
    stopMove() {
      this._isMoving = false;
    }
    getMove() {
      return this._isMoving;
    }
    addEventItem(item) {
      this._event = item;
      this.owner.addChild(item);
    }
    removeEventItem() {
      this._event = null;
    }
    addEnemy(enmey) {
      this._enmey = enmey;
    }
    removeEnemy() {
      this._enmey = null;
    }
    //设置到固定位置
    setPos(blocks, adds) {
      let num = this._blocks.numChildren;
      for (let i = 0; i < num; i++) {
        let c = this._blocks.getChildAt(i);
        let pos = c.transform.position;
        pos.z = blocks[i];
        c.transform.position = pos;
      }
      num = this._adds.numChildren;
      for (let i = 0; i < num; i++) {
        let c = this._adds.getChildAt(i);
        let max = -Number(c.name);
        let pos = c.transform.position;
        pos.z = adds[i];
        c.transform.position = pos;
        if (pos.z < max + this.showDis) {
          let mat = this._mats[i];
          if (pos.z >= max + this.showDis) {
            mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_CUTOUT;
          } else {
            this._tmpColor.a = (pos.z + this.speed - max) / this.showDis;
            mat.setColor("u_AlbedoColor", this._tmpColor);
          }
        }
        pos.z += this.speed;
        if (pos.z > 0) {
          pos.z = max;
          let mat = this._mats[i];
          mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
          this._tmpColor.a = 0;
          mat.setColor("u_AlbedoColor", this._tmpColor);
        }
      }
    }
    getPos() {
      let num = this._blocks.numChildren;
      let blocks = [];
      for (let i = 0; i < num; i++) {
        let c = this._blocks.getChildAt(i);
        let pos = c.transform.position;
        blocks.push(pos.z);
      }
      let adds = [];
      num = this._adds.numChildren;
      for (let i = 0; i < num; i++) {
        let c = this._adds.getChildAt(i);
        let pos = c.transform.position;
        adds.push(pos.z);
      }
      return { blocks, adds };
    }
    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}
    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
  };
  __decorateClass([
    property3(Boolean)
  ], AdventureWorldComp.prototype, "isPreview", 2);
  __decorateClass([
    property3(Number)
  ], AdventureWorldComp.prototype, "speed", 2);
  __decorateClass([
    property3(Number)
  ], AdventureWorldComp.prototype, "showDis", 2);
  AdventureWorldComp = __decorateClass([
    regClass3("1YUk9F87SIee8drRqCV7FA")
  ], AdventureWorldComp);

  // assets/res/comp/FlowMapMaterialComp.ts
  var { regClass: regClass4, property: property4 } = Laya;
  var FlowMapMaterialComp = class extends Laya.Script {
    onEnable() {
      this._time = 0;
      this.timeID = Laya.Shader3D.propertyNameToID("u_Time");
      this.mat = this.owner.material;
    }
    onUpdate() {
      if (!this.mat)
        return;
      var delta = Laya.timer.delta / 1e3;
      this._time += delta;
      this.mat.shaderData.setNumber(this.timeID, this._time);
    }
  };
  FlowMapMaterialComp = __decorateClass([
    regClass4("FxfKGD2oRXmQAv_DhVXj9Q")
  ], FlowMapMaterialComp);

  // assets/res/comp/CCDIKSolver.ts
  var CCDIKSolver = class {
    constructor(bones, weights) {
      // 最大迭代次数
      this.maxIterations = 1;
      // 容差距离
      this.tolerance = 1e-3;
      this.bones = bones;
      this.weights = weights;
      this.endEffector = bones[bones.length - 1];
      this._endPos = this.endEffector.position;
    }
    solve(targetPosition) {
      let bones = this.bones;
      this._endPos = this.endEffector.position;
      for (let i = 0; i < this.maxIterations; i++) {
        if (Laya.Vector3.distance(this._endPos, targetPosition) < this.tolerance)
          break;
        for (let j = this.bones.length - 1; j >= 0; j--) {
          let fromToRotation2 = function(fromVec, toVec) {
            let q = new Laya.Quaternion();
            Laya.Vector3.normalize(fromVec, fromVec);
            Laya.Vector3.normalize(toVec, toVec);
            let dot = Laya.Vector3.dot(fromVec, toVec);
            let angle = Math.acos(Math.min(Math.max(dot, -1), 1));
            let axis = new Laya.Vector3();
            Laya.Vector3.cross(fromVec, toVec, axis);
            if (Laya.Vector3.scalarLength(axis) < 1e-6) {
              if (dot < 0) {
                let tempAxis = new Laya.Vector3();
                Laya.Vector3.cross(fromVec, Laya.Vector3.UnitY, tempAxis);
                if (Laya.Vector3.scalarLength(tempAxis) < 1e-6) {
                  Laya.Vector3.cross(fromVec, Laya.Vector3.UnitZ, tempAxis);
                }
                Laya.Quaternion.rotationAxisAngle(tempAxis, Math.PI, q);
              }
            } else {
              Laya.Vector3.normalize(axis, axis);
              Laya.Quaternion.rotationAxisAngle(axis, angle, q);
            }
            return q;
          };
          var fromToRotation = fromToRotation2;
          const bone = this.bones[j];
          const weight = this.weights[j];
          if (weight <= 0)
            continue;
          let currentBone = bones[i];
          let lastBone = bones[bones.length - 1];
          let toLastBone = new Laya.Vector3();
          Laya.Vector3.subtract(lastBone.position, currentBone.position, toLastBone);
          let toTarget = new Laya.Vector3();
          Laya.Vector3.subtract(targetPosition, currentBone.position, toTarget);
          let fromToRot = fromToRotation2(toLastBone, toTarget);
          let targetRotation = new Laya.Quaternion();
          targetRotation = currentBone.rotation;
          Laya.Quaternion.multiply(fromToRot, targetRotation, targetRotation);
          if (weight >= 1) {
            currentBone.rotation = targetRotation;
          } else {
            let currentRot = new Laya.Quaternion();
            Laya.Quaternion.slerp(currentBone.rotation, targetRotation, weight, currentRot);
            currentBone.rotation = currentRot;
          }
        }
      }
    }
    // 辅助方法：设置骨骼权重
    setWeight(boneIndex, weight) {
      if (boneIndex >= 0 && boneIndex < this.weights.length) {
        this.weights[boneIndex] = Math.min(Math.max(weight, 0), 1);
      }
    }
  };

  // assets/res/comp/CCDIKControl.ts
  var Vector3 = Laya.Vector3;
  var Quaternion = Laya.Quaternion;
  var Matrix4x4 = Laya.Matrix4x4;
  var CCDIKControl = class {
    constructor() {
      this._initialOffset = new Vector3();
      this._initMat = new Matrix4x4();
      this.currentAngle = 0;
      this._velocity = 0;
    }
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}
    //组件被启用后执行，例如节点被添加到舞台后
    init(target, ikbones, weights) {
      this.ikSolver = new CCDIKSolver(
        ikbones,
        weights
      );
      this._target = target;
    }
    refresh() {
      this._vPos = this.endPos().clone();
      Vector3.subtract(this._vPos, this._target.transform.position, this._initialOffset);
      this._target.transform.worldMatrix.cloneTo(this._initMat);
      this.currentAngle = 0;
    }
    slove() {
      if (!this._vPos)
        return;
      this.ikSolver.solve(this._vPos);
    }
    endPos() {
      return this.ikSolver.endEffector.position;
    }
    getBasePos(pos, objectA, initMat) {
      const result = new Laya.Vector3();
      const worldToLocal = new Laya.Matrix4x4();
      const tempPos = new Laya.Vector3();
      objectA.transform.worldMatrix.invert(worldToLocal);
      Laya.Vector3.transformCoordinate(pos, worldToLocal, tempPos);
      Laya.Vector3.transformCoordinate(tempPos, initMat, tempPos);
      Laya.Vector3.subtract(tempPos, objectA.transform.position, result);
      return result;
    }
    applyRotation(_targetYAngle, epsilon, limit, spring, damping, playing) {
      this.updateValue(_targetYAngle, epsilon, limit, spring, damping);
      if (!playing && this.currentAngle === _targetYAngle)
        return;
      const totalRotation = new Quaternion();
      Quaternion.createFromYawPitchRoll(this.currentAngle * Math.PI / 180, 0, 0, totalRotation);
      const newPosition = this._vPos;
      Vector3.transformQuat(this.getBasePos(this.endPos(), this._target, this._initMat), totalRotation, newPosition);
      Vector3.add(this._target.transform.position, newPosition, newPosition);
      this._vPos = newPosition;
    }
    updateValue(_targetYAngle, epsilon, limit, spring, damping) {
      const displacement = _targetYAngle - this.currentAngle;
      const deltaTime = Math.min(Laya.timer.delta / 1e3, 0.018);
      if (Math.abs(displacement) < epsilon) {
        this.currentAngle = _targetYAngle;
        this._velocity = 0;
        return;
      } else if (Math.abs(displacement) > limit) {
        this.currentAngle = _targetYAngle - Math.sign(displacement) * limit;
        this._velocity *= -1;
      }
      const acceleration = spring * displacement;
      this._velocity += acceleration * deltaTime;
      this._velocity *= 1 - damping * deltaTime;
      this.currentAngle += this._velocity * deltaTime;
    }
  };

  // assets/res/comp/IKTargetsComp.ts
  var Script = Laya.Script;
  var Sprite3D = Laya.Sprite3D;
  var Quaternion2 = Laya.Quaternion;
  var { regClass: regClass5, property: property5 } = Laya;
  var IKTargetsComp = class extends Script {
    constructor() {
      super(...arguments);
      this.sensitivity = 2;
      this.spring = 20;
      this.damping = 1;
      this.epsilon = 1e-3;
      this.limit = 20;
      // 私有成员
      this._isDragging = false;
      this._lastMouseX = 0;
      this._targetYAngle = 0;
      this._ikDatas = [];
      this.start = false;
      this.test = false;
      this._init = false;
      this._previousY = 0;
    }
    onAwake() {
      this.init();
    }
    onEnable() {
      if (!this._init) {
        this._init = true;
        this.test = false;
        this.enabled = false;
        return;
      }
      if (this.test)
        this.start = true;
      this.initEvents();
      this.reset();
    }
    onDisable() {
      this.removeEvents();
    }
    reset() {
      Laya.timer.once(1, this, () => {
        let rotate = this.owner.transform.rotationEuler.y;
        this._targetYAngle = 0;
        this._ikDatas.forEach((ik) => {
          ik.refresh();
          ik.currentAngle = 0.1;
        });
        this.start = true;
        this._previousY = rotate;
      });
    }
    addRotate(rotate) {
    }
    init() {
      this._self = this.owner;
      this.ani = this._self.getComponent(Laya.Animator);
      let weights = [];
      weights[0] = null;
      weights[1] = null;
      weights[2] = [1, 0.3];
      weights[3] = [1, 0.6, 0.3];
      weights[4] = [1, 0.6, 0.3, 0.1];
      weights[5] = [1, 0.8, 0.6, 0.3, 0.1];
      weights[6] = [1, 0.8, 0.6, 0.4, 0.2, 0.1];
      weights[7] = [1, 0.8, 0.6, 0.4, 0.2, 0.1, 0.05];
      if (this.bones)
        for (let i = 0; i < this.bones.length; i++) {
          const bone = this.bones[i];
          const ikbones = [];
          if (!bone) {
            console.error("bone lost");
            continue;
          }
          this.addChild(bone.transform, ikbones);
          if (ikbones.length < 2) {
            console.log("bone error : " + bone.name);
            continue;
          }
          const ik = new CCDIKControl();
          ik.init(this._self, ikbones, weights[ikbones.length]);
          this._ikDatas.push(ik);
        }
    }
    addChild(target, list) {
      list.push(target);
      const childCount = target.owner.numChildren;
      if (childCount === 0)
        return;
      for (let i = 0; i < childCount; i++) {
        const child = target.owner.getChildAt(i);
        this.addChild(child.transform, list);
      }
    }
    /** 初始化输入事件 */
    initEvents() {
      if (!this.test)
        return;
      Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.onMouseDown);
      Laya.stage.on(Laya.Event.MOUSE_UP, this, this.onMouseUp);
      Laya.stage.on(Laya.Event.MOUSE_OUT, this, this.onMouseUp);
    }
    removeEvents() {
      if (!this.test)
        return;
      Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.onMouseDown);
      Laya.stage.off(Laya.Event.MOUSE_UP, this, this.onMouseUp);
      Laya.stage.off(Laya.Event.MOUSE_OUT, this, this.onMouseUp);
    }
    /** 鼠标按下事件处理 */
    onMouseDown(e) {
      this._isDragging = true;
      this._lastMouseX = Laya.stage.mouseX;
      Laya.Mouse.hide();
    }
    /** 鼠标抬起事件处理 */
    onMouseUp(e) {
      this._isDragging = false;
      Laya.Mouse.show();
    }
    onUpdate() {
      if (this.test) {
        this.handleMouseInput();
        return;
      }
      let currentY = this.owner.transform.rotationEuler.y;
      if (currentY - this._previousY > 180) {
        this._targetYAngle -= 360;
      } else if (currentY - this._previousY < -180) {
        this._targetYAngle += 360;
      }
      this._targetYAngle += currentY - this._previousY;
      this._previousY = currentY;
    }
    onLateUpdate() {
      var _a;
      this.applyRotation(this._targetYAngle);
      if (!this.start)
        return;
      let playing = false;
      if (this.ani) {
        playing = this.ani.getControllerLayer(0).getCurrentPlayState().animatorState.name !== "stand1";
      }
      (_a = this._ikDatas) == null ? void 0 : _a.forEach((ik) => {
        ik.applyRotation(this._targetYAngle, this.epsilon, this.limit, this.spring, this.damping, playing);
        ik.slove();
      });
    }
    applyRotation(_targetYAngle) {
      if (!this.test)
        return;
      const rotA = new Quaternion2();
      Quaternion2.createFromYawPitchRoll(_targetYAngle * Math.PI / 180, 0, 0, rotA);
      this._self.transform.rotation = rotA;
    }
    handleMouseInput() {
      if (this._isDragging) {
        const deltaX = Laya.stage.mouseX - this._lastMouseX;
        this._targetYAngle -= deltaX * this.sensitivity;
        this._lastMouseX = Laya.stage.mouseX;
      }
    }
  };
  __decorateClass([
    property5(Number)
  ], IKTargetsComp.prototype, "sensitivity", 2);
  __decorateClass([
    property5(Number)
  ], IKTargetsComp.prototype, "spring", 2);
  __decorateClass([
    property5(Number)
  ], IKTargetsComp.prototype, "damping", 2);
  __decorateClass([
    property5(Number)
  ], IKTargetsComp.prototype, "epsilon", 2);
  __decorateClass([
    property5(Number)
  ], IKTargetsComp.prototype, "limit", 2);
  __decorateClass([
    property5({
      type: [Sprite3D],
      // 声明数组元素类型
      tips: "Bones"
    })
  ], IKTargetsComp.prototype, "bones", 2);
  __decorateClass([
    property5(Number)
  ], IKTargetsComp.prototype, "_targetYAngle", 2);
  __decorateClass([
    property5(Boolean)
  ], IKTargetsComp.prototype, "test", 2);
  IKTargetsComp = __decorateClass([
    regClass5("rV0aoRNoS8W0Lfdov09_-w")
  ], IKTargetsComp);

  // assets/res/comp/ListTweenComp.ts
  var { regClass: regClass6, property: property6 } = Laya;
  var ListTweenComp = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.isCustomRepeat = true;
      this.AniType = 0;
      this.tweenType = {
        /** 单行横排，单个渐显、往右位移 */
        ONE: 1,
        /** dan'h竖排，单个渐显、往上位移 */
        TWO: 2,
        /*** 多行多列 单行单列逐个渐显，位移*/
        THREE: 3
      };
      this.sroToIdx = -1;
      /** 动作类型 */
      this._showAniCount = 0;
      this._needShowAni = false;
      this._endIndx = -1;
    }
    set showAniType(type) {
      this.AniType = type;
      this.play();
    }
    get showAniType() {
      return this.AniType;
    }
    onAwake() {
      super.onAwake();
      this.tweenComp = this.owner.addComponent(sg.UnitTweenComp);
      this.timerComp = this.owner.addComponent(sg.UnitTimerComp);
      if (this.isCustomRepeat) {
        switch (this.owner.scrollType) {
          case Laya.ScrollType.None:
            break;
          case Laya.ScrollType.Horizontal:
            this.owner.repeatX = 0;
            break;
          case Laya.ScrollType.Vertical:
            this.owner.repeatY = 0;
            break;
          case Laya.ScrollType.Both:
            this.owner.repeatX = 0;
            this.owner.repeatY = 0;
            break;
        }
      }
    }
    onEnable() {
      this.owner.on(Laya.Event.RESIZE, this.onResize.bind(this));
      this.timerComp.clear(this, this.onResize);
      ;
      this.timerComp.once(100, this, this.onResize);
    }
    onDisable() {
      this.owner.off(Laya.Event.RESIZE, this.onResize.bind(this));
      this._needShowAni = false;
      this._endIndx = -1;
      this.sroToIdx = -1;
      super.onDisable();
    }
    willScrollTo(idx) {
      this.sroToIdx = idx;
    }
    onResize() {
      this.tweenComp.clearTweenByTarget(this);
      this.stopShowAni();
      this._endIndx = -1;
      this._initPos();
      this.play();
    }
    play() {
      if (this.AniType > 0) {
        this._needShowAni = true;
        if (this.sroToIdx > -1) {
          let self = this;
          this.timerComp.once(100, self, () => {
            self.owner.scrollTo(self.sroToIdx);
            self.showAnimation();
          });
        } else {
          this.timerComp.callLater(this, this.showAnimation);
        }
      }
    }
    _initPos() {
      if (!this.owner || !this.owner.cells)
        return;
      let len = this.owner.cells.length;
      for (let i = 0; i < len; i++) {
        let cell = this.owner.cells[i];
        switch (this.showAniType) {
          case this.tweenType.ONE:
            {
            }
            break;
          case this.tweenType.TWO:
            {
            }
            break;
          case this.tweenType.THREE:
            {
            }
            break;
        }
      }
    }
    stopShowAni() {
      if (!this.owner || !this.owner.cells)
        return;
      let repeatX = this.owner.repeatX;
      let repeatY = this.owner.repeatY;
      for (let i = 0; i < this.owner.cells.length; i++) {
        let cell = this.owner.cells[i];
        Laya.Tween.clearAll(cell);
        let line = 0;
        let col = 0;
        if (repeatY == 1 && this.owner.scrollType == Laya.ScrollType.Horizontal) {
          line = 0;
          col = i;
        } else {
          line = Math.floor(i / repeatX);
          col = i % repeatX;
        }
        let x = col * cell.width + col * this.owner.spaceX;
        let y = line * cell.height + line * this.owner.spaceY;
        cell.alpha = 1;
        cell.pos(x, y);
      }
    }
    /**
     * 确保list渲染完必，再播动效，否则位移缓动生效
     * @param type 
     * @param params 
     */
    showAnimation() {
      if (this._needShowAni) {
        this._needShowAni = false;
        this.timerComp.clear(this, this.onResize);
        if (this._endIndx != -1)
          this.stopShowAni();
        switch (this.showAniType) {
          case this.tweenType.ONE:
            this.owner.scrollTo(0);
            this._playAniumationOne();
            break;
          case this.tweenType.TWO:
            this.owner.scrollTo(0);
            this._playAniumationTwo();
            break;
          case this.tweenType.THREE:
            this.owner.scrollTo(0);
            this._playAniumationThree();
            break;
        }
      }
    }
    _playAniumationOne() {
      this.owner.mouseEnabled = false;
      let len = this.owner.cells.length;
      this._endIndx = len - 1;
      for (let i = 0; i < len; i++) {
        this._startActionOne(i);
      }
    }
    _startActionOne(idx, delyTime = 35) {
      let cell = this.owner.getCell(idx);
      cell.alpha = 0;
      cell.x -= 15;
      this.tweenComp.clearTweenByTarget(cell);
      this.tweenComp.tweenTo(cell, { alpha: 1 }, 200, Laya.Ease.circOut, Laya.Handler.create(this, this._onPalyAnimationEnd, [idx], false), delyTime * idx, false, true);
      this.tweenComp.tweenTo(cell, { x: cell.x + 15 }, 200, Laya.Ease.circOut, Laya.Handler.create(this, this._onPlayMoveEnd, [idx]), delyTime * idx, false, true);
    }
    _playAniumationTwo() {
      this.owner.mouseEnabled = false;
      let len = this.owner.cells.length;
      this._endIndx = len - 1;
      for (let i = 0; i < len; i++) {
        this._startActionTwo(i);
      }
    }
    _startActionTwo(idx, delyTime = 100) {
      let cell = this.owner.cells[idx];
      this.tweenComp.clearTweenByTarget(cell);
      cell.alpha = 0;
      cell.y += 100;
      this.tweenComp.tweenTo(cell, { y: cell.y - 100 }, delyTime * idx, Laya.Ease.circInOut, Laya.Handler.create(this, this._onPlayMoveEnd, [idx], false), null, false);
      this.tweenComp.tweenTo(cell, { alpha: 1 }, delyTime * idx + 50, Laya.Ease.circInOut, Laya.Handler.create(this, this._onPalyAnimationEnd, [idx]), null, false);
    }
    _playAniumationThree() {
      this.owner.mouseEnabled = false;
      let len = this.owner.cells.length;
      this._endIndx = len - 1;
      for (let i = 0; i < len; i++) {
        this._startActionThree(i);
      }
    }
    _startActionThree(idx, delyTime = 50) {
      let cell = this.owner.getCell(idx);
      cell.alpha = 0;
      cell.y -= 30;
      this.tweenComp.clearTweenByTarget(cell);
      let line = Math.floor(idx / this.owner.repeatX);
      let coumn = Math.floor(idx % this.owner.repeatX);
      this.tweenComp.tweenTo(cell, { alpha: 1 }, 300, Laya.Ease.circOut, Laya.Handler.create(this, this._onPalyAnimationEnd, [idx]), delyTime * line + delyTime * coumn, false, true);
      this.tweenComp.tweenTo(cell, { y: cell.y + 30 }, 300, Laya.Ease.circOut, Laya.Handler.create(this, this._onPlayMoveEnd, [idx], false), delyTime * line + delyTime * coumn, false, true);
    }
    _onPalyAnimationEnd(idx) {
      if (this._endIndx == -1)
        return;
      if (idx == this._endIndx) {
        this.endHandle && this.endHandle.run();
        this.timerComp.clearCallLater(this, this.showAnimation);
      }
    }
    _onPlayMoveEnd(idx) {
      if (this._endIndx == -1)
        return;
      if (idx == this._endIndx) {
        this.owner.mouseEnabled = true;
      }
    }
  };
  __decorateClass([
    property6(Boolean)
  ], ListTweenComp.prototype, "isCustomRepeat", 2);
  __decorateClass([
    property6(Number)
  ], ListTweenComp.prototype, "AniType", 2);
  ListTweenComp = __decorateClass([
    regClass6("TnaSO7tsSBmzBGQWIoJ5xQ")
  ], ListTweenComp);

  // assets/res/comp/PosTweenComp.ts
  var { regClass: regClass7, property: property7 } = Laya;
  var PosTweenComp = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.AniType = 1;
      this.delayTime = 200;
    }
    onAwake() {
      super.onAwake();
      this.tweenComp = this.owner.addComponent(sg.UnitTweenComp);
      this.timerComp = this.owner.addComponent(sg.UnitTimerComp);
    }
    onEnable() {
      this._initAni();
      this.timerComp.once(this.delayTime, this, this._playAni);
    }
    onDisable() {
      this.timerComp.clearCallLater(this, this._playAni);
      this.tweenComp.clearTweenByTarget(this);
      super.onDisable();
    }
    _initAni() {
      this.targetPosY = this.owner.y;
      this.owner.alpha = 0;
    }
    _playAni() {
      if (this.AniType > 0) {
        this.owner.y = this.targetPosY + 30;
        this.tweenComp.tweenTo(this.owner, { y: this.targetPosY, alpha: 1 }, 220);
      }
    }
  };
  __decorateClass([
    property7(Number)
  ], PosTweenComp.prototype, "AniType", 2);
  __decorateClass([
    property7(Number)
  ], PosTweenComp.prototype, "delayTime", 2);
  PosTweenComp = __decorateClass([
    regClass7("m0W2sUBpQJydyDWMZ2sgjg")
  ], PosTweenComp);

  // assets/res/comp/ScreenDissolveComp.ts
  var { regClass: regClass8, property: property8 } = Laya;
  var ScreenDissolveComp = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.time = 1;
    }
    onEnable() {
      this.cutScreen();
    }
    cutScreen() {
      let screenWidth = Laya.stage.width;
      let screenHeight = Laya.stage.height;
      this.renderTexture = Laya.RenderTexture.createFromPool(
        screenWidth,
        screenHeight,
        Laya.RenderTargetFormat.R8G8B8,
        Laya.RenderTargetFormat.None
      );
      const renderTexture = this.renderTexture;
      const camera = this.camera;
      const commandBuffer = new Laya.CommandBuffer();
      commandBuffer.blitScreenQuad(null, renderTexture);
      commandBuffer.context = Laya.RenderContext3D._instance;
      camera.addCommandBuffer(Laya.CameraEventFlags.AfterEveryThing, commandBuffer);
      this.renderer.sharedMaterial.setFloat("u_Schedule", 0);
      Laya.timer.once(1, this, () => {
        camera.removeCommandBuffer(Laya.CameraEventFlags.AfterEveryThing, commandBuffer);
        Laya.timer.once(this.time * 1e3, this, () => {
          this.owner.active = false;
        });
        this.renderer.sharedMaterial.setTexture("u_AlbedoTexture", renderTexture);
        this.renderer.enabled = true;
        this.owner.getComponent(Laya.Animator).play("screenDissolve");
      });
    }
    onPostRender() {
    }
    // fallDown(): void{
    //     let t = 0.0;
    //     Laya.timer.frameLoop(1, this, () => {
    //         if(t < 0.5)
    //             t += Laya.timer.delta / 1000 * this.speed * 10;
    //         else
    //             t += Laya.timer.delta / 1000 * this.speed;
    //         this.renderer.sharedMaterial.setFloat("u_Schedule" , t);
    //         if(t > 2.5)
    //         {
    //             Laya.timer.clearAll(this);
    //             // this.owner.active = false;
    //         }
    //     });
    // }
    onDisable() {
      Laya.RenderTexture.recoverToPool(this.renderTexture);
      this.renderTexture = null;
      this.renderer.enabled = false;
    }
  };
  __decorateClass([
    property8(Laya.Camera)
  ], ScreenDissolveComp.prototype, "camera", 2);
  __decorateClass([
    property8(Laya.MeshRenderer)
  ], ScreenDissolveComp.prototype, "renderer", 2);
  __decorateClass([
    property8(Number)
  ], ScreenDissolveComp.prototype, "time", 2);
  ScreenDissolveComp = __decorateClass([
    regClass8("Y-wndRdOTpKGKYvvxIcAAQ")
  ], ScreenDissolveComp);
  return __toCommonJS(bundle_exports);
})();
window.__setBundle_("main", __bundle__);
