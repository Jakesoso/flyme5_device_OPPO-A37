.class public abstract Lcom/mediatek/simservs/client/SimservType;
.super Lcom/mediatek/simservs/xcap/InquireType;
.source "SimservType.java"


# static fields
.field static final ATT_ACTIVE:Ljava/lang/String; = "active"

.field public static final TAG:Ljava/lang/String; = "SimservType"


# instance fields
.field public mActived:Z

.field mSsTc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 3
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/InquireType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 50
    const-string v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xcap debug params: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimservType;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method


# virtual methods
.method public abstract initServiceInstance(Lorg/w3c/dom/Document;)V
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    return v0
.end method

.method public isSupportEtag()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mIsSupportEtag:Z

    return v0
.end method

.method protected loadConfiguration()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v13, ""

    .line 82
    .local v13, "xmlContent":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, "nodeName":Ljava/lang/String;
    const-string v14, "SimservType"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadConfiguration():nodeName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnablePredefinedSimservQueryResult()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 87
    const-string v14, "/data/ss.xml"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/simservs/client/SimservType;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 90
    invoke-virtual {v13, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 92
    const-string v14, "SimservType"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadConfiguration():fail to get tested xml for nodeName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v14, "SimservType"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadConfiguration():get tested xml for nodeName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_1
    sget-boolean v14, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    if-eqz v14, :cond_2

    .line 103
    const-string v14, "SimservType"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "xmlContent="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    if-eqz v13, :cond_0

    .line 107
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 108
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 109
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 110
    .local v3, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9}, Lorg/xml/sax/InputSource;-><init>()V

    .line 111
    .local v9, "is":Lorg/xml/sax/InputSource;
    new-instance v14, Ljava/io/StringReader;

    invoke-direct {v14, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 114
    :try_start_0
    invoke-virtual {v3, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 136
    .local v4, "doc":Lorg/w3c/dom/Document;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 137
    .local v2, "currentNode":Lorg/w3c/dom/NodeList;
    sget-boolean v14, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    if-eqz v14, :cond_3

    .line 138
    const-string v14, "SimservType"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getNodeName()="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_8

    .line 142
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 143
    .local v1, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    .line 144
    .local v10, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-lez v14, :cond_4

    .line 145
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-ge v8, v14, :cond_4

    .line 146
    invoke-interface {v10, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 147
    .local v11, "node":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "active"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 148
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 170
    .end local v1    # "activeElement":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    .end local v10    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "node":Lorg/w3c/dom/Node;
    :cond_4
    :goto_4
    sget-boolean v14, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    if-eqz v14, :cond_5

    .line 171
    const-string v14, "SimservType"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "xmldoc="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/simservs/client/SimservType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    goto/16 :goto_0

    .line 100
    .end local v2    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "is":Lorg/xml/sax/InputSource;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getContent()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 115
    .restart local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v5

    .line 116
    .local v5, "e":Lorg/xml/sax/SAXException;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 117
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 118
    new-instance v9, Lorg/xml/sax/InputSource;

    .end local v9    # "is":Lorg/xml/sax/InputSource;
    invoke-direct {v9}, Lorg/xml/sax/InputSource;-><init>()V

    .line 119
    .restart local v9    # "is":Lorg/xml/sax/InputSource;
    new-instance v14, Ljava/io/StringReader;

    invoke-direct {v14, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 121
    :try_start_1
    invoke-virtual {v3, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    goto/16 :goto_2

    .line 122
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v6

    .line 123
    .local v6, "err":Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 125
    new-instance v14, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v15, 0x1f4

    invoke-direct {v14, v15}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v14

    .line 126
    .end local v6    # "err":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v6

    .line 127
    .local v6, "err":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    new-instance v14, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v15, 0x1f4

    invoke-direct {v14, v15}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v14

    .line 131
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    .end local v6    # "err":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 132
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    new-instance v14, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v15, 0x1f4

    invoke-direct {v14, v15}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v14

    .line 145
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "activeElement":Lorg/w3c/dom/Element;
    .restart local v2    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "i":I
    .restart local v10    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v11    # "node":Lorg/w3c/dom/Node;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 154
    .end local v1    # "activeElement":Lorg/w3c/dom/Element;
    .end local v8    # "i":I
    .end local v10    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "node":Lorg/w3c/dom/Node;
    :cond_8
    const-string v14, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_4

    .line 156
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 157
    .restart local v1    # "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    .line 158
    .restart local v10    # "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-lez v14, :cond_4

    .line 159
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-ge v8, v14, :cond_4

    .line 160
    invoke-interface {v10, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 161
    .restart local v11    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "active"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 162
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    goto/16 :goto_4

    .line 159
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5
.end method

.method public refresh()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->loadConfiguration()V

    .line 60
    return-void
.end method

.method public setActive(Z)V
    .locals 4
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "xml":Ljava/lang/String;
    const-string v2, "xcap.ns.ss"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "useXcapNs":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-boolean v2, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<ss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " active=\"true\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/client/SimservType;->setContent(Ljava/lang/String;)V

    .line 207
    :goto_1
    return-void

    .line 197
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<ss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " active=\"false\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    if-eqz v2, :cond_2

    .line 202
    const-string v2, "active"

    const-string v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/simservs/client/SimservType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_2
    const-string v2, "active"

    const-string v3, "false"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/simservs/client/SimservType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
