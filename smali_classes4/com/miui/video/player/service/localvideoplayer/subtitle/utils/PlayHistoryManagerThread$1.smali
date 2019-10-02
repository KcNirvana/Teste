.class final Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread$1;
.super Ljava/lang/Object;
.source "PlayHistoryManagerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->executeSaveHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entity:Lcom/miui/video/base/database/LocalVideoHistoryEntity;


# direct methods
.method constructor <init>(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread$1;->val$entity:Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread$1;->val$entity:Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/CLVDatabase;->updatePlayPositionInfo(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread$1;->val$entity:Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/CLVDatabase;->saveLocalHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    return-void
.end method
