.class public Lcom/miui/video/base/common/net/model/ModelData;
.super Ljava/lang/Object;
.source "ModelData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private card_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private default_search_term:Ljava/lang/String;

.field private like:I

.field private next:Ljava/lang/String;

.field private red_point:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/ModelData;->next:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCard_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/ModelData;->card_list:Ljava/util/List;

    return-object v0
.end method

.method public getDefault_search_term()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/ModelData;->default_search_term:Ljava/lang/String;

    return-object v0
.end method

.method public getLike()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/ModelData;->like:I

    return v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/ModelData;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getRed_point()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/ModelData;->red_point:I

    return v0
.end method

.method public setCard_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/ModelData;->card_list:Ljava/util/List;

    return-void
.end method

.method public setDefault_search_term(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/ModelData;->default_search_term:Ljava/lang/String;

    return-void
.end method

.method public setLike(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/ModelData;->like:I

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/ModelData;->next:Ljava/lang/String;

    return-void
.end method

.method public setRed_point(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/ModelData;->red_point:I

    return-void
.end method
