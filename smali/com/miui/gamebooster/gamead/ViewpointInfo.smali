.class public Lcom/miui/gamebooster/gamead/ViewpointInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private content:Ljava/lang/String;

.field private dataType:I

.field private hot:I

.field private iA:Ljava/util/List;

.field private iB:Ljava/util/List;

.field protected iC:Ljava/lang/String;

.field private iD:Lcom/miui/gamebooster/gamead/User;

.field private iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

.field private iF:I

.field private iG:Ljava/lang/String;

.field private ie:Lcom/miui/gamebooster/gamead/ActivityInfo;

.field private if:J

.field private ig:Ljava/lang/String;

.field private ih:Ljava/lang/String;

.field private ii:Z

.field private ij:J

.field private ik:Lcom/miui/gamebooster/gamead/GameInfo;

.field private il:Z

.field private im:I

.field private in:I

.field private io:I

.field private ip:Lcom/miui/gamebooster/gamead/LikeInfo;

.field protected iq:Z

.field private ir:Lcom/miui/gamebooster/gamead/MixedContent;

.field private is:I

.field private isLike:Z

.field private it:I

.field protected iu:Ljava/lang/String;

.field protected iv:J

.field protected iw:Ljava/lang/String;

.field protected ix:Ljava/lang/String;

.field protected iy:I

.field private iz:I

.field private mPicCount:I

.field private mWordCount:I

.field private reason:I

.field private score:I

.field private status:I

.field private title:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/gamead/k;

    invoke-direct {v0}, Lcom/miui/gamebooster/gamead/k;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->isLike:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iq:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->isLike:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iq:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ij:J

    const-class v0, Lcom/miui/gamebooster/gamead/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/User;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iD:Lcom/miui/gamebooster/gamead/User;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->content:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->score:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->it:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->io:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->updateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->if:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->status:I

    const-class v0, Lcom/miui/gamebooster/gamead/LikeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/LikeInfo;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ip:Lcom/miui/gamebooster/gamead/LikeInfo;

    const-class v0, Lcom/miui/gamebooster/gamead/GameInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/GameInfo;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ik:Lcom/miui/gamebooster/gamead/GameInfo;

    sget-object v0, Lcom/miui/gamebooster/gamead/ReplyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iA:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->dataType:I

    const-class v0, Lcom/miui/gamebooster/gamead/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/ActivityInfo;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ie:Lcom/miui/gamebooster/gamead/ActivityInfo;

    const-class v0, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    sget-object v0, Lcom/miui/gamebooster/gamead/SimpleTopicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iB:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ii:Z

    const-class v0, Lcom/miui/gamebooster/gamead/MixedContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/MixedContent;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->reason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->is:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->mPicCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->mWordCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iF:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ig:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ih:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->hot:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->il:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->isLike:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->im:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private static ld(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ll()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/gamebooster/a/u;->getInstance()Lcom/miui/gamebooster/a/u;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kT()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lf()Lcom/miui/gamebooster/gamead/LikeInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lf()Lcom/miui/gamebooster/gamead/LikeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/LikeInfo;->mc()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/miui/gamebooster/a/u;->hx(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kZ()Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/Horizontal;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Horizontal;->mu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/VerticalInRow;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->ml()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->mn()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    move-result-object v0

    :goto_3
    move-object v1, v0

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method private ln()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/Horizontal;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Horizontal;->mu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/VerticalInRow;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->ml()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_4
    return v4
.end method

.method public static lr(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/ViewpointInfo;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    new-instance v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;

    invoke-direct {v0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->content:Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "createTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "createTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->if:J

    :cond_2
    const-string/jumbo v1, "dataType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "dataType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->dataType:I

    :cond_3
    const-string/jumbo v1, "deviceModel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "deviceModel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ig:Ljava/lang/String;

    :cond_4
    const-string/jumbo v1, "deviceShowIcon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "deviceShowIcon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ih:Ljava/lang/String;

    :cond_5
    const-string/jumbo v1, "gameId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "gameId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ij:J

    :cond_6
    const-string/jumbo v1, "hot"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "hot"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->hot:I

    :cond_7
    const-string/jumbo v1, "isLike"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "isLike"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_8

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->isLike:Z

    :cond_8
    const-string/jumbo v1, "likeCnt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "likeCnt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->io:I

    :cond_9
    const-string/jumbo v1, "mixedContent"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "mixedContent"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gamebooster/gamead/MixedContent;->lO(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    :cond_a
    const-string/jumbo v1, "owner"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "owner"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->is:I

    :cond_b
    const-string/jumbo v1, "playDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "playDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->it:I

    :cond_c
    const-string/jumbo v1, "replyCnt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "replyCnt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iz:I

    :cond_d
    const-string/jumbo v1, "score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->score:I

    :cond_e
    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->status:I

    :cond_f
    const-string/jumbo v1, "videoInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    const-string/jumbo v2, "videoInfo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    :cond_10
    const-string/jumbo v1, "summaryInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "summaryInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "picsCnt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "picsCnt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->mPicCount:I

    :cond_11
    const-string/jumbo v2, "wordsCnt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "wordsCnt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->mWordCount:I

    :cond_12
    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gamebooster/gamead/MixedContent;->lO(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/MixedContent;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    :cond_13
    const-string/jumbo v2, "videoInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    const-string/jumbo v3, "videoInfo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    :cond_14
    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->content:Ljava/lang/String;

    :cond_15
    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->title:Ljava/lang/String;

    :cond_16
    const-string/jumbo v1, "traceId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "traceId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iC:Ljava/lang/String;

    :cond_17
    const-string/jumbo v1, "updateTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "updateTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->updateTime:J

    :cond_18
    const-string/jumbo v1, "userInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "userInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gamebooster/gamead/User;->mp(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/User;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iD:Lcom/miui/gamebooster/gamead/User;

    :cond_19
    const-string/jumbo v1, "viewCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "viewCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iF:I

    :cond_1a
    const-string/jumbo v1, "viewpointId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "viewpointId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iG:Ljava/lang/String;

    :cond_1b
    const-string/jumbo v1, "isEssence"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "isEssence"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->im:I

    :cond_1c
    const-string/jumbo v1, "isSetTop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "isSetTop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->in:I

    :cond_1d
    const-string/jumbo v1, "gameInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "gameInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gamebooster/gamead/GameInfo;->lQ(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/GameInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ik:Lcom/miui/gamebooster/gamead/GameInfo;

    :cond_1e
    const-string/jumbo v1, "relObjId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "relObjId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iv:J

    :cond_1f
    const-string/jumbo v1, "relObjType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "relObjType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iy:I

    :cond_20
    const-string/jumbo v1, "relObjSubId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "relObjSubId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ix:Ljava/lang/String;

    :cond_21
    invoke-static {v0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ld(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/a/e;->fo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/a/e;->fo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kQ()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ij:J

    return-wide v0
.end method

.method public kR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iC:Ljava/lang/String;

    return-object v0
.end method

.method public kS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iG:Ljava/lang/String;

    return-object v0
.end method

.method public kT()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->dataType:I

    return v0
.end method

.method public kU()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->im:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kV()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/MixedContent;->lN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/Horizontal;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Horizontal;->mu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/VerticalInRow;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/VerticalInRow;->ml()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_4
    return v4
.end method

.method public kW()Lcom/miui/gamebooster/gamead/GameInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ik:Lcom/miui/gamebooster/gamead/GameInfo;

    return-object v0
.end method

.method public kX()Lcom/miui/gamebooster/gamead/ActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ie:Lcom/miui/gamebooster/gamead/ActivityInfo;

    return-object v0
.end method

.method public kY()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->is:I

    return v0
.end method

.method public kZ()Lcom/miui/gamebooster/gamead/MixedContent;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    return-object v0
.end method

.method public la()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->mWordCount:I

    return v0
.end method

.method public lb()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iB:Ljava/util/List;

    return-object v0
.end method

.method public lc()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->mPicCount:I

    return v0
.end method

.method public le()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->io:I

    return v0
.end method

.method public lf()Lcom/miui/gamebooster/gamead/LikeInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ip:Lcom/miui/gamebooster/gamead/LikeInfo;

    return-object v0
.end method

.method public lg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iu:Ljava/lang/String;

    return-object v0
.end method

.method public lh()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iv:J

    return-wide v0
.end method

.method public li()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public lj()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iy:I

    return v0
.end method

.method public lk()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iz:I

    return v0
.end method

.method public ll()Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    return-object v0
.end method

.method public lm()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iF:I

    return v0
.end method

.method public lo()Z
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->dataType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ln()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public lp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ii:Z

    return v0
.end method

.method public lq()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->isLike:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ip:Lcom/miui/gamebooster/gamead/LikeInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ip:Lcom/miui/gamebooster/gamead/LikeInfo;

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/LikeInfo;->mc()I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ij:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iD:Lcom/miui/gamebooster/gamead/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->it:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->io:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->updateTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->if:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ip:Lcom/miui/gamebooster/gamead/LikeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ik:Lcom/miui/gamebooster/gamead/GameInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iA:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->dataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ie:Lcom/miui/gamebooster/gamead/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iE:Lcom/miui/gamebooster/gamead/ViewPointVideoInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iB:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ii:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ir:Lcom/miui/gamebooster/gamead/MixedContent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->is:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->mPicCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->mWordCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->iF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->ih:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->hot:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->il:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->isLike:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/ViewpointInfo;->im:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
