#include "WorkBook.h"


xlsxEdit::WorkBook::WorkBook()
{
	mBook = xlCreateXMLBook();
	mBook->setLocale("UTF-8");
	mSheet = nullptr;
}

bool xlsxEdit::WorkBook::Open(const char* path)
{
	if (!mBook) return false;

	bool ret = mBook->load(path);
	return ret;
}

bool xlsxEdit::WorkBook::Save(const char* path)
{
	if (!mBook) return false;

	bool ret = mBook->save(path);
	return ret;
}

void xlsxEdit::WorkBook::Close()
{
	if (!mBook) return;
	mBook->release();
}

bool xlsxEdit::WorkBook::GetSheet(int idx)
{
	if (!mBook) return false;

	libxl::Sheet* sheet = mBook->getSheet(idx);
	if (sheet)
	{
		mSheet = sheet;
		return true;
	}
	else
	{
		return false;
	}
}

int xlsxEdit::WorkBook::GetLastRow()
{
	if (!mBook || !mSheet) return 0;
	return mSheet->lastRow();
}

const char* xlsxEdit::WorkBook::GetErrorMsg()
{
	if (!mBook) return "create book false";
	return mBook->errorMessage();
}

const char* xlsxEdit::WorkBook::ReadStr(int row, int col)
{
	if (!mBook || !mSheet) return nullptr;
	return mSheet->readStr(row, col);
}

bool xlsxEdit::WorkBook::WriteStr(int row, int col, const char* data)
{
	if (!mBook || !mSheet) return false;
	return mSheet->writeStr(row, col, data);
}