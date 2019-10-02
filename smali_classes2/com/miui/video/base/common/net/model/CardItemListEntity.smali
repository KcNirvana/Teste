.class public Lcom/miui/video/base/common/net/model/CardItemListEntity;
.super Ljava/lang/Object;
.source "CardItemListEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/common/net/model/CardItemListEntity$KvListEntity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/video/base/common/net/model/CardItemListEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private author_icon:Ljava/lang/String;

.field private author_name:Ljava/lang/String;

.field private author_target:Ljava/lang/String;

.field private cp:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private duration:I

.field private gmt_publish:J

.field private gmt_publish_text:Ljava/lang/String;

.field private has_video:Z

.field private image_url:Ljava/lang/String;

.field private item_id:Ljava/lang/String;

.field private item_style:I

.field private item_type:Ljava/lang/String;

.field private kvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/CardItemListEntity$KvListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private source_item_id:Ljava/lang/String;

.field private sub_title:Ljava/lang/String;

.field private subscribe_count:I

.field private subscribe_count_text:Ljava/lang/String;

.field private subscribed:I

.field private target:Ljava/lang/String;

.field private target_report:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private topped:I

.field private video_count:I

.field private video_count_text:Ljava/lang/String;

.field private view_count:I

.field private view_count_text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/base/common/net/model/CardItemListEntity$1;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/CardItemListEntity$1;-><init>()V

    sput-object v0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->image_url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_icon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribe_count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribe_count_text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->duration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->target:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->target_report:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->has_video:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->sub_title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->video_count:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor_icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor_target()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_target:Ljava/lang/String;

    return-object v0
.end method

.method public getCp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->cp:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->duration:I

    return v0
.end method

.method public getGmt_publish()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->gmt_publish:J

    return-wide v0
.end method

.method public getGmt_publish_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->gmt_publish_text:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->item_id:Ljava/lang/String;

    return-object v0
.end method

.method public getItem_style()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->item_style:I

    return v0
.end method

.method public getItem_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->item_type:Ljava/lang/String;

    return-object v0
.end method

.method public getKvList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/CardItemListEntity$KvListEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->kvList:Ljava/util/List;

    return-object v0
.end method

.method public getSource_item_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->source_item_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribe_count()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribe_count:I

    return v0
.end method

.method public getSubscribe_count_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribe_count_text:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribed()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribed:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_report()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->target_report:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopped()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->topped:I

    return v0
.end method

.method public getVideo_count()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->video_count:I

    return v0
.end method

.method public getVideo_count_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->video_count_text:Ljava/lang/String;

    return-object v0
.end method

.method public getView_count()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->view_count:I

    return v0
.end method

.method public getView_count_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->view_count_text:Ljava/lang/String;

    return-object v0
.end method

.method public isHas_video()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->has_video:Z

    return v0
.end method

.method public setAuthor_icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_icon:Ljava/lang/String;

    return-void
.end method

.method public setAuthor_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_name:Ljava/lang/String;

    return-void
.end method

.method public setAuthor_target(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_target:Ljava/lang/String;

    return-void
.end method

.method public setCp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->cp:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->duration:I

    return-void
.end method

.method public setGmt_publish(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->gmt_publish:J

    return-void
.end method

.method public setGmt_publish_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->gmt_publish_text:Ljava/lang/String;

    return-void
.end method

.method public setHas_video(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->has_video:Z

    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->image_url:Ljava/lang/String;

    return-void
.end method

.method public setItem_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->item_id:Ljava/lang/String;

    return-void
.end method

.method public setItem_style(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->item_style:I

    return-void
.end method

.method public setItem_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->item_type:Ljava/lang/String;

    return-void
.end method

.method public setKvList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/CardItemListEntity$KvListEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->kvList:Ljava/util/List;

    return-void
.end method

.method public setSource_item_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->source_item_id:Ljava/lang/String;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setSubscribe_count(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribe_count:I

    return-void
.end method

.method public setSubscribe_count_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribe_count_text:Ljava/lang/String;

    return-void
.end method

.method public setSubscribed(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribed:I

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->target:Ljava/lang/String;

    return-void
.end method

.method public setTarget_report(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->target_report:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopped(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->topped:I

    return-void
.end method

.method public setVideo_count(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->video_count:I

    return-void
.end method

.method public setVideo_count_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->video_count_text:Ljava/lang/String;

    return-void
.end method

.method public setView_count(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->view_count:I

    return-void
.end method

.method public setView_count_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->view_count_text:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->image_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->author_icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribe_count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->subscribe_count_text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->target:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->target_report:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->has_video:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->sub_title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/video/base/common/net/model/CardItemListEntity;->video_count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
