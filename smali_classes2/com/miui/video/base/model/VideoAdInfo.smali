.class public Lcom/miui/video/base/model/VideoAdInfo;
.super Ljava/lang/Object;
.source "VideoAdInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public prerollTagIds:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preroll_tag_ids"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstTagId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/model/VideoAdInfo;->prerollTagIds:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/base/model/VideoAdInfo;->prerollTagIds:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/model/VideoAdInfo;->prerollTagIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/base/model/VideoAdInfo;->prerollTagIds:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method
