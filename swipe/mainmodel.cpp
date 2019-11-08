#include "mainmodel.h"

MainModel::MainModel(QObject *parent) : QObject(parent)
{
}

bool login(QString *error){
    if(*error!=nullptr){
        return false;
    }

    return true;
}
QString MainModel::name()
{
    return m_name;
}
void MainModel::setName(const QString &name)
{
    m_name = name;
}
QString MainModel::password()
{
    return m_password;
}
void MainModel::setPassword(const QString &password)
{
    m_password = password;
}
