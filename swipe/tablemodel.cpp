// Refer to https://stackoverflow.com/questions/55610163/how-to-create-a-tableview-5-12-with-column-headers
// https://forum.qt.io/topic/101770/header-columns-for-qtquick-tableview

#include "tablemodel.h"

TableModel::TableModel(QObject *parent)
    : QAbstractTableModel(parent)
{
}

QVariant TableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if(role == Qt::DisplayRole){
        if(orientation == Qt::Horizontal)
            return  QString("hor-%1").arg(section);
        else
            return QString("v%1").arg(section);
    }
    return QVariant();
}

int TableModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return 100;
}

int TableModel::columnCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return 20;
}

QVariant TableModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();
    if(role == Qt::DisplayRole
            && index.row() >= 0 && index.row() < rowCount()
            && index.column() >= 0 && index.column() < columnCount())
        return QString("data %1-%2").arg(index.row()).arg(index.column());
    return QVariant();
}

