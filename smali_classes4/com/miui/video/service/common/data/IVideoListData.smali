.class public interface abstract Lcom/miui/video/service/common/data/IVideoListData;
.super Ljava/lang/Object;
.source "IVideoListData.java"

# interfaces
.implements Lcom/miui/video/common/feed/CActions;


# static fields
.field public static final KEY_DELETE_DATA:Ljava/lang/String; = "com.miui.video.KEY_DELETE_DATA"

.field public static final KEY_DELETE_DATA_DIALOG:Ljava/lang/String; = "com.miui.video.KEY_DELETE_DATA_DIALOG"

.field public static final KEY_INIT_DATA:Ljava/lang/String; = "com.miui.video.KEY_INIT_DATA"

.field public static final KEY_INIT_LOCAL_DATA:Ljava/lang/String; = "com.miui.video.KEY_INIT_LOCAL_DATA"

.field public static final KEY_LOAD_MORE_DATA:Ljava/lang/String; = "com.miui.video.KEY_LOAD_MORE_DATA"

.field public static final KEY_SET_DATA:Ljava/lang/String; = "com.miui.video.KEY_SET_DATA"

.field public static final KEY_SYNC_DATA:Ljava/lang/String; = "com.miui.video.KEY_SYNC_DATA"

.field public static final LOCAL_HISTORY:I = 0x2

.field public static final ONLINE_FAVOR:I = 0x3

.field public static final ONLINE_HISTORY:I = 0x1

.field public static final ONLINE_PLAYLIST:I = 0x4


# virtual methods
.method public abstract getCheckedVideoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataType()I
.end method

.method public abstract getVideoListChecked()V
.end method

.method public abstract getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;
.end method

.method public abstract isAllChecked()Z
.end method

.method public abstract runDeleteVideoList()Z
.end method

.method public abstract runInitVideoList()V
.end method

.method public abstract setVideoListChecked(Z)V
.end method

.method public abstract setVideoListEntity(Lcom/miui/video/service/common/data/VideoListEntity;)V
.end method
