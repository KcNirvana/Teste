.class public Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager$Holder;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mMediaWritter:Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncMediaService:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->mMediaWritter:Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaWritter;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaWritter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->mMediaWritter:Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->mMediaWritter:Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    return-object v0
.end method

.method public getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->mSyncMediaService:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->mSyncMediaService:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->mSyncMediaService:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    return-object v0
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->release()V

    return-void
.end method
