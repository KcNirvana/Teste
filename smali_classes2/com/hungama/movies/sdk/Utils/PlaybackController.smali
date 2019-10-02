.class public Lcom/hungama/movies/sdk/Utils/PlaybackController;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;
    }
.end annotation


# static fields
.field public static ACTION_CAST_DISCONNECTED:Ljava/lang/String; = "cast-disconnected"

.field public static ACTION_DOWNLOAD_NOT_REQUIRE_NETWORK:Ljava/lang/String; = "download_not_requrie_network"

.field public static final CONTENT_CONUTINUE_SEEK_POS_EXTRA:Ljava/lang/String; = "seek_pos_CONTINUE"

.field public static final CONTENT_DESC_EXTRA:Ljava/lang/String; = "descriptions"

.field private static final CONTENT_EXT_EXTRA:Ljava/lang/String; = "type"

.field public static final CONTENT_FROM_CASTING:Ljava/lang/String; = "from_casting"

.field public static final CONTENT_ID_EXTRA:Ljava/lang/String; = "content_id"

.field public static final CONTENT_IMAGE_EXTRA:Ljava/lang/String; = "image_path"

.field public static final CONTENT_NAME_EXTRA:Ljava/lang/String; = "NAME"

.field public static final CONTENT_PREVIEW_END_TIME:Ljava/lang/String; = "preview_end_time"

.field public static final CONTENT_PREVIEW_PURCHASE:Ljava/lang/String; = "purchase"

.field public static final CONTENT_PREVIW_URL:Ljava/lang/String; = "preview_url"

.field public static final CONTENT_SEEK_POS_EXTRA:Ljava/lang/String; = "seek_pos"

.field public static final CONTENT_TYPE_EXTRA:Ljava/lang/String; = "content_type"

.field public static final CONTENT_URI_EXTRA:Ljava/lang/String; = "content_uri"

.field private static final LANDSCAPE_ORIENTATION:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MUSIC_VIDEO_LIST:Ljava/lang/String; = "music_video_list"

.field private static final PORTRAIT_ORIENTATION:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final TRAILER_URL:Ljava/lang/String; = "TRAILER_URL"

.field public static final VIDEO_TYPE:Ljava/lang/String; = "video_type"


# instance fields
.field private TAG:Ljava/lang/String;

.field contentId:Ljava/lang/String;

.field private contentImage:Ljava/lang/String;

.field private contentImageTile:Ljava/lang/String;

.field contentName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private img_centre:Landroid/widget/ImageView;

.field private isPlayerControlEnable:Z

.field ivLogo:Landroid/widget/ImageView;

.field private mSensorStateChanges:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

.field playVideoClass:Lcom/hungama/movies/sdk/a;

.field playbackControllerCallback:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

.field private playbackView:Landroid/view/View;

.field playerEventsCallback:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

.field private pos:I

.field sensorEvent:Landroid/view/OrientationEventListener;

.field private sourceScreen:Ljava/lang/String;

.field private videoPlayingType:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    sput v0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->PORTRAIT_ORIENTATION:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    :goto_1
    sput v0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->LANDSCAPE_ORIENTATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/hungama/movies/sdk/Utils/VideoPlayingType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PlaybackController"

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sourceScreen:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->isPlayerControlEnable:Z

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->videoPlayingType:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    iput p4, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->pos:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hungama/movies/sdk/R$layout;->activity_play_video_detail:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playbackView:Landroid/view/View;

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playbackView:Landroid/view/View;

    sget p2, Lcom/hungama/movies/sdk/R$id;->img_centre:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->img_centre:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playbackView:Landroid/view/View;

    sget p2, Lcom/hungama/movies/sdk/R$id;->ivLogo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string p2, "onConstructor)"

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->initializeView()V

    return-void
.end method

.method static synthetic access$000(Lcom/hungama/movies/sdk/Utils/PlaybackController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->setMarginToImage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->mSensorStateChanges:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/hungama/movies/sdk/Utils/PlaybackController;Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;)Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->mSensorStateChanges:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/hungama/movies/sdk/Utils/PlaybackController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->setRequestedOrientation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playbackView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hungama/movies/sdk/Utils/PlaybackController;)I
    .locals 0

    iget p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->pos:I

    return p0
.end method

.method static synthetic access$400(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentImage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sourceScreen:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/VideoPlayingType;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->videoPlayingType:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->isPlayerControlEnable:Z

    return p0
.end method

.method static synthetic access$900(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->getSourceScreen()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNavigationBarHeight()I
    .locals 5

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private getSourceScreen()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sourceScreen:Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoPlayingType(I)Lcom/hungama/movies/sdk/Utils/VideoPlayingType;
    .locals 2

    sget-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MOVIE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x16

    if-eq p0, v1, :cond_0

    const/16 v1, 0x33

    if-eq p0, v1, :cond_0

    const/16 v1, 0x35

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->SERIAL_EPISODE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MUSIC_VIDEO:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    goto :goto_0

    :cond_1
    :pswitch_1
    sget-object v0, Lcom/hungama/movies/sdk/Utils/VideoPlayingType;->MOVIE:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private goFullScreen()V
    .locals 1

    sget v0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->LANDSCAPE_ORIENTATION:I

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->setRequestedOrientation(I)V

    sget-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->WATCH_FOR_LANDSCAPE_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->mSensorStateChanges:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sensorEvent:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->initialiseSensor(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sensorEvent:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :goto_0
    return-void
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initialiseSensor(Z)V
    .locals 3

    new-instance v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController$3;-><init>(Lcom/hungama/movies/sdk/Utils/PlaybackController;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sensorEvent:Landroid/view/OrientationEventListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sensorEvent:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method private initializeView()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;

    invoke-direct {v1, p0}, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;-><init>(Lcom/hungama/movies/sdk/Utils/PlaybackController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerControlEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->isPlayerControlEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private needToHideNavBar()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setBitmap(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->img_centre:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v1}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->setMarginToImage(I)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->img_centre:Landroid/widget/ImageView;

    new-instance v1, Lcom/hungama/movies/sdk/Utils/PlaybackController$1;

    invoke-direct {v1, p0}, Lcom/hungama/movies/sdk/Utils/PlaybackController$1;-><init>(Lcom/hungama/movies/sdk/Utils/PlaybackController;)V

    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method

.method private setHungamaLogo(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    sget v0, Lcom/hungama/movies/sdk/R$drawable;->home_header_logo_small:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    sget v0, Lcom/hungama/movies/sdk/R$drawable;->home_header_logo:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/hungama/movies/sdk/R$dimen;->hungama_logo_right_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->setMarginToLogo(I)V

    return-void
.end method

.method private setHungamaLogoMiniPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    sget v1, Lcom/hungama/movies/sdk/R$drawable;->home_header_logo_mini:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$dimen;->hungama_logo_right_margin_miniplayer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->setMarginToLogo(I)V

    return-void
.end method

.method private setMarginToImage(I)V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->img_centre:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->img_centre:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMarginToLogo(I)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/hungama/movies/sdk/R$dimen;->play_btn_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setRequestedOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "setRequestedOrientation()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playerEventsCallback:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-interface {v0, p1}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->changeOrientation(I)V

    return-void
.end method

.method private shrinkToPotraitMode()V
    .locals 1

    sget v0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->PORTRAIT_ORIENTATION:I

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->setRequestedOrientation(I)V

    sget-object v0, Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;->WATCH_FOR_POTRAIT_CHANGES:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->mSensorStateChanges:Lcom/hungama/movies/sdk/Utils/PlaybackController$SensorStateChangeActions;

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sensorEvent:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->initialiseSensor(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sensorEvent:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :goto_0
    return-void
.end method


# virtual methods
.method public forwardMovie()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "forwardMovie()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->d()V

    :cond_0
    return-void
.end method

.method public forwardMovie(JI)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "forwardMovie1()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hungama/movies/sdk/b;->a(JI)V

    :cond_0
    return-void
.end method

.method public getBufferedDuration()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "getBufferedDuration() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->M()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentPosition() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->H()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConsumption()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "getDataConsumption() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->O()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "getDuration() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->I()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInitialResolution()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackControlsAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->d()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaybackView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playbackView:Landroid/view/View;

    return-object v0
.end method

.method public getState()Lcom/hungama/movies/sdk/Utils/PlaybackState;
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "getState() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->J()Lcom/hungama/movies/sdk/Utils/PlaybackState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->g()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBitrateCappingSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "isBitrateCappingSupported() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->L()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBuffering()Z
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "isBuffering() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->N()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMuted()Z
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "isMuted() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->G()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPLaying()Z
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "isPLaying()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->s()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->r()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->sourceScreen:Ljava/lang/String;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->videoPlayingType:Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playbackView:Landroid/view/View;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->ivLogo:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playerEventsCallback:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    iput-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->img_centre:Landroid/widget/ImageView;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->p()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hungama/movies/sdk/b;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->o()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "onStartTrackingTouch() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/b;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "onStopTrackingTouch() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/b;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public pauseMovie()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "pauseMovie()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->c()V

    :cond_0
    return-void
.end method

.method public resumeMovie()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "resumeMovie()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->b()V

    :cond_0
    return-void
.end method

.method public rewindMovie()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "rewindMovie()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->e()V

    :cond_0
    return-void
.end method

.method public rewindMovie(JI)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "rewindMovie1()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hungama/movies/sdk/b;->b(JI)V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "seekTo()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0, p1, p2}, Lcom/hungama/movies/sdk/b;->a(J)V

    :cond_0
    return-void
.end method

.method public setContentImage(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentImage:Ljava/lang/String;

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentImageTile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentImageTile:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->setBitmap(Ljava/lang/String;)V

    return-void
.end method

.method public setContentName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentName:Ljava/lang/String;

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "setMute() "

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->h(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackControllerCallback(Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playbackControllerCallback:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;)V

    :cond_0
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->a(F)V

    :cond_0
    return-void
.end method

.method public setPlayerControlEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->isPlayerControlEnable:Z

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->isPlayerControlEnable:Z

    invoke-virtual {p1, v0}, Lcom/hungama/movies/sdk/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setPlayerEventsCallback(Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playerEventsCallback:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;)V

    :cond_0
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVariant(I)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "setVariant()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->a(I)V

    :cond_0
    return-void
.end method

.method public shutdownPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->TAG:Ljava/lang/String;

    const-string v1, "shutdownPlayer()"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a;->K()V

    :cond_0
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Lcom/hungama/movies/sdk/Utils/DownloadEventsCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hungama/movies/sdk/Utils/DownloadEventsCallback;)V

    :cond_0
    return-void
.end method
