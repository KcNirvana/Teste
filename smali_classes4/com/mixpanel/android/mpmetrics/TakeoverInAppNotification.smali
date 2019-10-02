.class public Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;
.super Lcom/mixpanel/android/mpmetrics/InAppNotification;
.source "TakeoverInAppNotification.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mixpanel/android/mpmetrics/InAppButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseButtonColor:I

.field private final mShouldFadeImage:Z

.field private final mTitle:Ljava/lang/String;

.field private final mTitleColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification$1;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification$1;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Lcom/mixpanel/android/mpmetrics/InAppButton;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mCloseButtonColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitleColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mShouldFadeImage:Z

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mButtons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mButtons:Ljava/util/ArrayList;

    new-instance v4, Lcom/mixpanel/android/mpmetrics/InAppButton;

    invoke-direct {v4, v2}, Lcom/mixpanel/android/mpmetrics/InAppButton;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "close_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mCloseButtonColor:I

    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/mixpanel/android/util/JSONUtils;->optionalStringKey(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitle:Ljava/lang/String;

    const-string v0, "title_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitleColor:I

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getExtras()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "image_fade"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mShouldFadeImage:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;

    const-string v1, "Notification JSON was unexpected or bad"

    invoke-direct {v0, v1, p1}, Lcom/mixpanel/android/mpmetrics/BadDecideObjectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getButton(I)Lcom/mixpanel/android/mpmetrics/InAppButton;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mixpanel/android/mpmetrics/InAppButton;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCloseColor()I
    .locals 1

    iget v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mCloseButtonColor:I

    return v0
.end method

.method public getNumButtons()I
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    iget v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitleColor:I

    return v0
.end method

.method public getType()Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;
    .locals 1

    sget-object v0, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->TAKEOVER:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    return-object v0
.end method

.method public hasTitle()Z
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setShouldShowShadow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mShouldFadeImage:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget p2, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mCloseButtonColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mTitleColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->mShouldFadeImage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
