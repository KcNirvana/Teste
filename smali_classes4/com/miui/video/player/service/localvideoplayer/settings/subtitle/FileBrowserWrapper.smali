.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;
.super Ljava/lang/Object;
.source "FileBrowserWrapper.java"


# instance fields
.field private path:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->type:I

    return v0
.end method

.method public setPath(Ljava/lang/String;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->type:I

    return-object p0
.end method
