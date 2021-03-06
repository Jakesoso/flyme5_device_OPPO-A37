.class public Lcom/oppo/ota/OppoRecoverySystem;
.super Landroid/os/RecoverySystem;
.source "OppoRecoverySystem.java"


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "OppoRecoverySystem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 43
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/RecoverySystem;-><init>()V

    return-void
.end method

.method public static installOppoOtaPackage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "packageFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez p1, :cond_0

    .line 54
    const-string v8, "OppoRecoverySystem"

    const-string/jumbo v9, "installOppoOtaPackage failed before reboot, packageFileList is null!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 58
    :cond_0
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 59
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 60
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 61
    new-instance v2, Ljava/io/FileWriter;

    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 76
    .local v2, "command":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 77
    .local v3, "filename":Ljava/lang/String;
    const/4 v0, 0x0

    .line 78
    .local v0, "arg":Ljava/lang/String;
    const-string v7, "--wipe_data"

    .line 79
    .local v7, "strWipeData":Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, "bWipeData":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 82
    .local v5, "packageFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    const-string v8, "/--wipe_data"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 85
    const/4 v1, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    const-string v8, "OppoRecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filename="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz v3, :cond_3

    const-string v8, "/mnt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 91
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    :cond_3
    const-string v8, "OppoRecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!! REBOOT TO INSTALL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " !!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v3, :cond_1

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--update_package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 99
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageFile":Ljava/io/File;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v8

    .line 103
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v1, :cond_5

    .line 104
    :try_start_1
    const-string v8, "OppoRecoverySystem"

    const-string v9, "!!!WIPE DATA FOR OTA!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 106
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 113
    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 114
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "recovery"

    invoke-virtual {v6, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 116
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Reboot failed (no permissions?)"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static installOppoOtaPackageSpecial(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "packageFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez p1, :cond_0

    .line 124
    const-string v8, "OppoRecoverySystem"

    const-string/jumbo v9, "installOppoOtaPackage failed before reboot, packageFileList is null!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 128
    :cond_0
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 129
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 130
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 131
    new-instance v2, Ljava/io/FileWriter;

    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 146
    .local v2, "command":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 147
    .local v3, "filename":Ljava/lang/String;
    const/4 v0, 0x0

    .line 148
    .local v0, "arg":Ljava/lang/String;
    const-string v7, "--wipe_data"

    .line 149
    .local v7, "strWipeData":Ljava/lang/String;
    const/4 v1, 0x0

    .line 151
    .local v1, "bWipeData":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 152
    .local v5, "packageFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 154
    if-eqz v3, :cond_2

    const-string v8, "/--wipe_data"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    const/4 v1, 0x1

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    const-string v8, "OppoRecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filename="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz v3, :cond_3

    const-string v8, "/mnt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 161
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    :cond_3
    const-string v8, "OppoRecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!! REBOOT TO INSTALL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " !!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eqz v3, :cond_1

    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--special_update_package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 169
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageFile":Ljava/io/File;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v8

    .line 173
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v1, :cond_5

    .line 174
    :try_start_1
    const-string v8, "OppoRecoverySystem"

    const-string v9, "!!!WIPE DATA FOR OTA!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 176
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 183
    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 184
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "recovery"

    invoke-virtual {v6, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 186
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Reboot failed (no permissions?)"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static installOppoSauPackage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "packageFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez p1, :cond_0

    .line 264
    const-string v8, "OppoRecoverySystem"

    const-string/jumbo v9, "installOppoSauPackage failed before reboot, packageFileList is null!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 268
    :cond_0
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 269
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 270
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 271
    new-instance v2, Ljava/io/FileWriter;

    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 273
    .local v2, "command":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 274
    .local v3, "filename":Ljava/lang/String;
    const/4 v0, 0x0

    .line 275
    .local v0, "arg":Ljava/lang/String;
    const-string v7, "--wipe_data"

    .line 276
    .local v7, "strWipeData":Ljava/lang/String;
    const/4 v1, 0x0

    .line 278
    .local v1, "bWipeData":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 279
    .local v5, "packageFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 281
    if-eqz v3, :cond_2

    const-string v8, "/--wipe_data"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 282
    const/4 v1, 0x1

    .line 283
    goto :goto_0

    .line 285
    :cond_2
    const-string v8, "OppoRecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "installOppoSauPackage filename="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz v3, :cond_3

    const-string v8, "/mnt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 288
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    :cond_3
    const-string v8, "OppoRecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!! REBOOT TO INSTALL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " !!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz v3, :cond_1

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--update_package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 296
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageFile":Ljava/io/File;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v8

    .line 300
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v1, :cond_5

    .line 301
    :try_start_1
    const-string v8, "OppoRecoverySystem"

    const-string v9, "!!!WIPE DATA FOR OTA!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 303
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 310
    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 312
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "sau"

    invoke-virtual {v6, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 314
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Reboot failed (no permissions?)"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static installOppoSauPackageSpecial(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "packageFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez p1, :cond_0

    .line 195
    const-string v8, "OppoRecoverySystem"

    const-string/jumbo v9, "installOppoSauPackageSpecial failed before reboot, packageFileList is null!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 199
    :cond_0
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 200
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 201
    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 202
    new-instance v2, Ljava/io/FileWriter;

    sget-object v8, Lcom/oppo/ota/OppoRecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 217
    .local v2, "command":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 218
    .local v3, "filename":Ljava/lang/String;
    const/4 v0, 0x0

    .line 219
    .local v0, "arg":Ljava/lang/String;
    const-string v7, "--wipe_data"

    .line 220
    .local v7, "strWipeData":Ljava/lang/String;
    const/4 v1, 0x0

    .line 222
    .local v1, "bWipeData":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 223
    .local v5, "packageFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 225
    if-eqz v3, :cond_2

    const-string v8, "/--wipe_data"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_0

    .line 229
    :cond_2
    const-string v8, "OppoRecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filename="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz v3, :cond_3

    const-string v8, "/mnt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 232
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    :cond_3
    const-string v8, "OppoRecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!! REBOOT TO INSTALL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " !!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz v3, :cond_1

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--special_update_package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 240
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 250
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageFile":Ljava/io/File;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v8

    .line 244
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v1, :cond_5

    .line 245
    :try_start_1
    const-string v8, "OppoRecoverySystem"

    const-string v9, "!!!WIPE DATA FOR OTA!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v2, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 247
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 254
    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 255
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "sau"

    invoke-virtual {v6, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 257
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Reboot failed (no permissions?)"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
