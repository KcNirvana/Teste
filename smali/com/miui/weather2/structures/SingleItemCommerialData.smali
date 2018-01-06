.class public Lcom/miui/weather2/structures/SingleItemCommerialData;
.super Lcom/miui/weather2/structures/CommerialData;
.source "SourceFile"


# instance fields
.field private mDataId:Ljava/lang/String;

.field private mImgUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/structures/CommerialData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/SingleItemCommerialData;->mImgUrls:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addImageUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/SingleItemCommerialData;->mImgUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/SingleItemCommerialData;->mDataId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/SingleItemCommerialData;->mImgUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/SingleItemCommerialData;->mDataId:Ljava/lang/String;

    return-void
.end method
