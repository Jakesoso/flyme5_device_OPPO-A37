.class public interface abstract Lcom/android/server/WidgetBackupProvider;
.super Ljava/lang/Object;
.source "WidgetBackupProvider.java"


# virtual methods
.method public abstract getWidgetParticipants(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgetState(Ljava/lang/String;I)[B
.end method

.method public abstract restoreFinished(I)V
.end method

.method public abstract restoreStarting(I)V
.end method

.method public abstract restoreWidgetState(Ljava/lang/String;[BI)V
.end method

.method public abstract updateProvidersForPackage(Ljava/lang/String;I)V
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "ZhiYong.Lin@Plf.Framework, add for BPM"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end method
