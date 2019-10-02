.class public Lcom/miui/video/base/common/net/model/CardRowListEntity;
.super Ljava/lang/Object;
.source "CardRowListEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private item_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private row_id:Ljava/lang/String;

.field private row_type:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private topped:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/base/common/net/model/CardRowListEntity$1;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/CardRowListEntity$1;-><init>()V

    sput-object v0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->topped:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->row_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->row_type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->title:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->item_list:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->item_list:Ljava/util/List;

    const-class v1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->titleList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->titleList:Ljava/util/List;

    const-class v1, Lcom/miui/video/common/feed/entity/TitleEntity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItem_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->item_list:Ljava/util/List;

    return-object v0
.end method

.method public getRow_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->row_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRow_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->row_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->titleList:Ljava/util/List;

    return-object v0
.end method

.method public getTopped()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->topped:I

    return v0
.end method

.method public setItem_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->item_list:Ljava/util/List;

    return-void
.end method

.method public setRow_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->row_id:Ljava/lang/String;

    return-void
.end method

.method public setRow_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->row_type:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TitleEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->titleList:Ljava/util/List;

    return-void
.end method

.method public setTopped(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->topped:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->topped:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->row_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->row_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->item_list:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardRowListEntity;->titleList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
