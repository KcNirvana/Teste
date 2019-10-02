.class public Lcom/miui/video/base/common/net/model/CardListEntity;
.super Ljava/lang/Object;
.source "CardListEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private card_id:Ljava/lang/String;

.field private row_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/base/common/net/model/CardListEntity$1;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/CardListEntity$1;-><init>()V

    sput-object v0, Lcom/miui/video/base/common/net/model/CardListEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardListEntity;->row_list:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardListEntity;->card_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCard_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardListEntity;->card_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRow_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardListEntity;->row_list:Ljava/util/List;

    return-object v0
.end method

.method public setCard_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardListEntity;->card_id:Ljava/lang/String;

    return-void
.end method

.method public setRow_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardListEntity;->row_list:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardListEntity;->row_list:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardListEntity;->card_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
