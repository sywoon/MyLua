local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "AbWriter"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "AbReader"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = print
  L6_2 = "--start--"
  L5_2(L6_2)
  L5_2 = print
  L6_2 = A3_2
  L5_2(L6_2)
  if A3_2 == 1 then
    L5_2 = L0_1.new
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.makeAb
    L8_2 = A2_2
    L6_2(L7_2, L8_2)
  elseif A3_2 == 2 then
    L5_2 = L1_1.new
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.unpackAb
    L8_2 = A2_2
    L6_2(L7_2, L8_2)
  end
  L5_2 = print
  L6_2 = "--finished--"
  L5_2(L6_2)
end

main = L2_1
L2_1 = os
L2_1 = L2_1.fixPath
L3_1 = arg
L3_1 = L3_1[1]
L4_1 = true
L2_1 = L2_1(L3_1, L4_1)
L3_1 = os
L3_1 = L3_1.fixPath
L4_1 = arg
L4_1 = L4_1[2]
L5_1 = true
L3_1 = L3_1(L4_1, L5_1)
L4_1 = os
L4_1 = L4_1.fixPath
L5_1 = arg
L5_1 = L5_1[3]
L6_1 = true
L4_1 = L4_1(L5_1, L6_1)
L5_1 = tonumber
L6_1 = arg
L6_1 = L6_1[4]
L5_1 = L5_1(L6_1)
if not L5_1 then
  L5_1 = 1
end
L6_1 = list
L6_1 = L6_1.sub
L7_1 = arg
L8_1 = 5
L6_1 = L6_1(L7_1, L8_1)
if L3_1 == nil then
  L7_1 = print
  L8_1 = "need input project path"
  L7_1(L8_1)
  return
end
L7_1 = print
L8_1 = "[[make ab]]"
L9_1 = L3_1
L10_1 = L4_1
L11_1 = L5_1
L12_1 = table
L12_1 = L12_1.tostring
L13_1 = L6_1
L12_1, L13_1 = L12_1(L13_1)
L7_1(L8_1, L9_1, L10_1, L11_1, L12_1, L13_1)
L7_1 = main
L8_1 = L2_1
L9_1 = L3_1
L10_1 = L4_1
L11_1 = L5_1
L12_1 = L6_1
L7_1(L8_1, L9_1, L10_1, L11_1, L12_1)
