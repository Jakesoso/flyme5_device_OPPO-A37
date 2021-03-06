.class public Landroid/app/OppoThemeHelper;
.super Ljava/lang/Object;
.source "OppoThemeHelper.java"


# static fields
.field private static final COMPLEX_UNIT_DIP:I = 0x1

.field private static final COMPLEX_UNIT_PX:I = 0x0

.field private static final COMPLEX_UNIT_SP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "packagemanager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "applicationinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "packageiteminfo"    # Landroid/content/pm/PackageItemInfo;
    .param p5, "flag"    # Z

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_1
    iget-object v1, p4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v1}, Landroid/app/OppoThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p0, "packagemanager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "applicationinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    const-class v19, Landroid/app/OppoThemeHelper;

    monitor-enter v19

    :try_start_0
    new-instance v12, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v0, v1}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 120
    .local v12, "rName":Landroid/app/ApplicationPackageManager$ResourceName;
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 121
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    move-object/from16 v18, v3

    .line 232
    .end local p0    # "packagemanager":Landroid/content/pm/PackageManager;
    :goto_0
    monitor-exit v19

    return-object v18

    .line 124
    .restart local p0    # "packagemanager":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v11, 0x1

    .line 125
    .local v11, "parseSucceed":Z
    if-nez p3, :cond_1

    .line 127
    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p3

    .line 146
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 147
    .local v13, "res":Landroid/content/res/Resources;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/content/res/Resources;->getThemeChanged()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 148
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->setIsThemeChanged(Z)V

    .line 149
    invoke-static {v13}, Lcom/oppo/theme/OppoConvertIcon;->initConvertIcon(Landroid/content/res/Resources;)V

    .line 150
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->parseIconXml()Z

    move-result v11

    .line 160
    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 161
    .local v10, "pString":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 162
    invoke-static/range {p3 .. p3}, Lcom/oppo/theme/OppoAppIconInfo;->isThirdPart(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    .line 163
    .local v8, "isThirdPart":Z
    if-nez v8, :cond_c

    .line 164
    sget-boolean v17, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    .line 165
    .local v17, "useWrap":Z
    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, "resName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 167
    .local v15, "sB":Ljava/lang/StringBuffer;
    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 168
    .local v7, "index":I
    if-ltz v7, :cond_3

    .line 169
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".png"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 172
    :cond_3
    if-eqz v10, :cond_b

    .line 173
    invoke-static {v10}, Lcom/oppo/theme/OppoAppIconInfo;->isThirdPartbyIconName(Ljava/lang/String;)Z

    move-result v9

    .line 175
    .local v9, "isThirdPartByIconName":Z
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/oppo/theme/OppoAppIconInfo;->indexOfPackageName(Ljava/lang/String;)I

    move-result v6

    .line 177
    .local v6, "iconIndex":I
    if-ltz v6, :cond_9

    invoke-static {v6}, Lcom/oppo/theme/OppoAppIconInfo;->getIconName(I)Ljava/lang/String;

    move-result-object v16

    .line 179
    .local v16, "tempStr":Ljava/lang/String;
    :goto_2
    if-eqz v16, :cond_a

    if-eqz v9, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 181
    move/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 189
    .end local v6    # "iconIndex":I
    .end local v9    # "isThirdPartByIconName":Z
    .end local v16    # "tempStr":Ljava/lang/String;
    :goto_3
    if-nez v3, :cond_4

    .line 190
    const/4 v8, 0x1

    .line 191
    invoke-virtual/range {p0 .. p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 196
    .end local v7    # "index":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "sB":Ljava/lang/StringBuffer;
    .end local v17    # "useWrap":Z
    :cond_4
    :goto_4
    if-nez v3, :cond_f

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    move-object v4, v3

    .line 199
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_5
    if-eqz v4, :cond_e

    if-eqz v11, :cond_e

    .line 202
    :try_start_3
    sget-boolean v18, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/app/OppoThemeHelper;->isGoogleApps(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 203
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v4, v13, v8, v0}, Lcom/oppo/theme/OppoConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ZZ)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v13, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isThirdPart":Z
    .end local v10    # "pString":Ljava/lang/String;
    .end local v13    # "res":Landroid/content/res/Resources;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 222
    :try_start_4
    check-cast p0, Landroid/app/ApplicationPackageManager;

    .end local p0    # "packagemanager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-object/from16 v18, v3

    .line 224
    goto/16 :goto_0

    .line 128
    .restart local p0    # "packagemanager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    .line 129
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 152
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13    # "res":Landroid/content/res/Resources;
    :cond_7
    if-eqz v13, :cond_8

    :try_start_5
    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->hasInit()Z

    move-result v18

    if-nez v18, :cond_8

    .line 153
    invoke-static {v13}, Lcom/oppo/theme/OppoConvertIcon;->initConvertIcon(Landroid/content/res/Resources;)V

    .line 155
    :cond_8
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->getAppsNumbers()I

    move-result v18

    if-gtz v18, :cond_2

    .line 156
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->parseIconXml()Z

    move-result v11

    goto/16 :goto_1

    .line 177
    .restart local v6    # "iconIndex":I
    .restart local v7    # "index":I
    .restart local v8    # "isThirdPart":Z
    .restart local v9    # "isThirdPartByIconName":Z
    .restart local v10    # "pString":Ljava/lang/String;
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "sB":Ljava/lang/StringBuffer;
    .restart local v17    # "useWrap":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 183
    .restart local v16    # "tempStr":Ljava/lang/String;
    :cond_a
    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->loadIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 186
    .end local v6    # "iconIndex":I
    .end local v9    # "isThirdPartByIconName":Z
    .end local v16    # "tempStr":Ljava/lang/String;
    :cond_b
    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->loadIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 194
    .end local v7    # "index":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "sB":Ljava/lang/StringBuffer;
    .end local v17    # "useWrap":Z
    :cond_c
    invoke-virtual/range {p0 .. p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto :goto_4

    .line 207
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_d
    :try_start_6
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v4, v13, v8}, Lcom/oppo/theme/OppoConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v13, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_6

    .line 211
    .end local v8    # "isThirdPart":Z
    .end local v10    # "pString":Ljava/lang/String;
    .end local v13    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v5

    .line 212
    .restart local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 213
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v5

    .line 214
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_8
    :try_start_7
    const-string v18, "OppoThemeHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure retrieving resources for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 119
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v11    # "parseSucceed":Z
    .end local v12    # "rName":Landroid/app/ApplicationPackageManager$ResourceName;
    .end local p0    # "packagemanager":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 215
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "parseSucceed":Z
    .restart local v12    # "rName":Landroid/app/ApplicationPackageManager$ResourceName;
    .restart local p0    # "packagemanager":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v5

    .line 218
    .local v5, "e":Ljava/lang/RuntimeException;
    :goto_9
    :try_start_8
    const-string v18, "OppoThemeHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure retrieving icon 0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 225
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local p0    # "packagemanager":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v5

    .line 226
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v18, "OppoThemeHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure retrieving resources for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 227
    :catch_5
    move-exception v5

    .line 230
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v18, "OppoThemeHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure retrieving icon 0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    .line 215
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "isThirdPart":Z
    .restart local v10    # "pString":Ljava/lang/String;
    .restart local v13    # "res":Landroid/content/res/Resources;
    .restart local p0    # "packagemanager":Landroid/content/pm/PackageManager;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_9

    .line 213
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_7
    move-exception v5

    move-object v3, v4

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_8

    .line 211
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_8
    move-exception v5

    move-object v3, v4

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_7

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object v3, v4

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    :cond_f
    move-object v4, v3

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 61
    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 64
    :cond_0
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p1}, Loppo/content/res/OppoFontUtils;->SetFlipFont(Landroid/content/res/Configuration;)V

    .line 67
    :cond_1
    return-void
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    const/high16 v0, 0x28000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, p1}, Landroid/app/OppoThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 1
    .param p0, "intentfilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "flage":Z
    return v0
.end method

.method private static isGoogleApps(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "isDefaultTheme"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "com.google.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.googlesuit.ggkj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.earth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "net.eeekeie.kekegdleiedec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.jsoh.GoogleService"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "lin.wang.allspeak"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDimension(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "dimension"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 245
    if-eqz p1, :cond_0

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, "numberString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 248
    .local v0, "complexString":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 249
    .local v2, "index":I
    if-gtz v2, :cond_1

    .line 268
    .end local v0    # "complexString":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v4    # "numberString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 252
    .restart local v0    # "complexString":Ljava/lang/String;
    .restart local v2    # "index":I
    .restart local v4    # "numberString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 255
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 256
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 257
    .local v1, "dim":I
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 258
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "px"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 260
    :cond_2
    const-string v6, "dp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "dip"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 262
    :cond_3
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 263
    :cond_4
    const-string/jumbo v6, "sp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method
