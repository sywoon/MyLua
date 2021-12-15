#ifndef WORK_BOOK_H
#define WORK_BOOK_H

#include "libxl.h"

namespace xlsxEdit
{
	class WorkBook
	{
	private:
		libxl::Book* mBook;
		libxl::Sheet* mSheet;
	public:
		WorkBook();
		bool Open(const char* path);
		bool Save(const char* path);
		void Close();
		bool GetSheet(int idx);
		int GetLastRow();
		const char* GetErrorMsg();

		const char* ReadStr(int row, int col);
		bool WriteStr(int row, int col, const char* data);
	};
}

#endif