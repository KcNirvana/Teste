.class public Lcom/miui/video/base/database/HideVideoEntity;
.super Ljava/lang/Object;
.source "HideVideoEntity.java"


# instance fields
.field private id:Ljava/lang/Long;

.field private md5_path:Ljava/lang/String;

.field private mediaId:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/database/HideVideoEntity;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/miui/video/base/database/HideVideoEntity;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/base/database/HideVideoEntity;->md5_path:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/base/database/HideVideoEntity;->mediaId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/HideVideoEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMd5_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/HideVideoEntity;->md5_path:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/HideVideoEntity;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/HideVideoEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/HideVideoEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMd5_path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/HideVideoEntity;->md5_path:Ljava/lang/String;

    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/HideVideoEntity;->mediaId:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/HideVideoEntity;->path:Ljava/lang/String;

    return-void
.end method
