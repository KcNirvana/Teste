.class public Lcom/miui/video/biz/ugc/data/UGCPageData;
.super Ljava/lang/Object;
.source "UGCPageData.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next"
    .end annotation
.end field

.field private shareAddr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share_h5_addr"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCPageData;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCPageData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCPageData;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getShareAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCPageData;->shareAddr:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/ugc/data/UGCEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/ugc/data/UGCPageData;->data:Ljava/util/List;

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/data/UGCPageData;->next:Ljava/lang/String;

    return-void
.end method

.method public setShareAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/data/UGCPageData;->shareAddr:Ljava/lang/String;

    return-void
.end method
