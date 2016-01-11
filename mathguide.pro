TEMPLATE = app
TARGET = 
DEPENDPATH += . \
    ui
INCLUDEPATH += .
INCLUDEPATH += ./source
INCLUDEPATH += ./source/graph
QT += webkit

INCLUDEPATH += /usr/include/python3.1
LIBS += -lpython3.1

# Input
HEADERS += \
    source/mainwindow.h \
    source/constants.h \
    source/py-inter.h \
    source/py-highlighter.h \
    source/inputwindow.h \
    source/recordwindow.h \
    source/plotwindow.h \
    source/popupwidgets.h \
    source/dialogs.h \
    source/graph/graphwidget.h \
    source/graph/graphscene.h \
    source/graph/node.h \
    source/graph/edge.h
SOURCES += \
    source/main.cpp \
    source/constants.cpp \
    source/mainwindow.cpp \
    source/py-inter.cpp \
    source/py-highlighter.cpp \
    source/inputwindow.cpp \
    source/recordwindow.cpp \
    source/plotwindow.cpp \
    source/popupwidgets.cpp \
    source/dialogs.cpp \
    source/graph/graphwidget.cpp \
    source/graph/graphscene.cpp \
    source/graph/node.cpp \
    source/graph/edge.cpp
FORMS += \
    ui/optionsdlg.ui \
    ui/sumdlg.ui \
    ui/proddlg.ui \
    ui/listdlg.ui \
    ui/matrixdlg.ui \
    ui/plotdlg.ui \
    ui/tabledlg.ui \
    ui/valuetabledlgx.ui
TRANSLATIONS = mathguide_de.ts
RESOURCES += mathguide.qrc