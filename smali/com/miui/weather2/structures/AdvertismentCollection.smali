.class public Lcom/miui/weather2/structures/AdvertismentCollection;
.super Lcom/miui/weather2/structures/CommerialData;
.source "SourceFile"


# static fields
.field public static final DATA_MORE_NUM:I = 0x4

.field public static final DATA_NUM:I = 0x3


# instance fields
.field private mAdvertismentDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AdvertismentData;",
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

    iput-object v0, p0, Lcom/miui/weather2/structures/AdvertismentCollection;->mAdvertismentDataArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AdvertismentCollection;->mAdvertismentDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdvertismentDataArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AdvertismentData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/AdvertismentCollection;->mAdvertismentDataArrayList:Ljava/util/ArrayList;

    return-object v0
.end method
