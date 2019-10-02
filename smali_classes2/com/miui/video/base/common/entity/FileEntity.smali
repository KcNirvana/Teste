.class public Lcom/miui/video/base/common/entity/FileEntity;
.super Ljava/lang/Object;
.source "FileEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OPERATION_PAUSE:I = 0x2

.field public static final OPERATION_RETRY:I = 0x3

.field public static final OPERATION_START:I = 0x1

.field public static final OPERATION_STOP:I = 0x0

.field public static final OPERATION_WAIT:I = 0x4

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_DOWNLOAD_ERROR:I = 0x2

.field public static final STATE_DOWNLOAD_FINISHED:I = 0x3

.field public static final STATE_INSTALLING:I = 0x4

.field public static final STATE_INSTALL_ERROR:I = 0x5

.field public static final STATE_INSTALL_FINISHED:I = 0x6

.field public static final STATE_UNDOWNLOAD:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cache:Ljava/lang/String;

.field private downloadSize:J

.field private downloadingSpeed:J

.field private extName:Ljava/lang/String;

.field private hashCode:I

.field private mime:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private operation:I

.field private params:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:I

.field private state:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->state:I

    iput v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->operation:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->state:I

    iput v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->operation:I

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/base/common/entity/FileEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->state:I

    iput v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->operation:I

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/base/common/entity/FileEntity;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/base/common/entity/FileEntity;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/base/common/entity/FileEntity;->extName:Ljava/lang/String;

    iput p5, p0, Lcom/miui/video/base/common/entity/FileEntity;->state:I

    return-void
.end method


# virtual methods
.method public getCache()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->cache:Ljava/lang/String;

    return-object v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/common/entity/FileEntity;->cache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/common/entity/FileEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/common/entity/FileEntity;->extName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/base/common/entity/FileEntity;->extName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->downloadSize:J

    return-wide v0
.end method

.method public getDownloadingSpeed()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->downloadingSpeed:J

    return-wide v0
.end method

.method public getExtName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->extName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/common/entity/FileEntity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/common/entity/FileEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/base/common/entity/FileEntity;->extName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/base/common/entity/FileEntity;->extName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashCode()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->hashCode:I

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->operation:I

    return v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->params:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->size:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->state:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/entity/FileEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCache(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->cache:Ljava/lang/String;

    return-void
.end method

.method public setDownloadSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->downloadSize:J

    return-void
.end method

.method public setDownloadingSpeed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->downloadingSpeed:J

    return-void
.end method

.method public setExtName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->extName:Ljava/lang/String;

    return-void
.end method

.method public setHashCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->hashCode:I

    return-void
.end method

.method public setMime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->mime:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperation(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->operation:I

    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->params:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->size:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->state:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/entity/FileEntity;->url:Ljava/lang/String;

    return-void
.end method
