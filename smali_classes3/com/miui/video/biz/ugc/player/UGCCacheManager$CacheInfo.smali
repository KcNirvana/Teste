.class public Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;
.super Ljava/lang/Object;
.source "UGCCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/ugc/player/UGCCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheInfo"
.end annotation


# instance fields
.field private cacheUrl:Ljava/lang/String;

.field private endTime:J

.field private progress:I

.field private startTime:J

.field final synthetic this$0:Lcom/miui/video/biz/ugc/player/UGCCacheManager;

.field private updateTime:J

.field private url:Ljava/lang/String;

.field private videoID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/ugc/player/UGCCacheManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->this$0:Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->videoID:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->cacheUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->startTime:J

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->videoID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->endTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->startTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->cacheUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->progress:I

    return p0
.end method


# virtual methods
.method public setProgress(I)V
    .locals 5

    iput p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->progress:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->updateTime:J

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->updateTime:J

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->endTime:J

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->this$0:Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->videoID:Ljava/lang/String;

    iget-wide v1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->endTime:J

    iget-wide v3, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->startTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {p1, v0, v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->access$700(Lcom/miui/video/biz/ugc/player/UGCCacheManager;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
