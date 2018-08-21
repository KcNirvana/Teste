.class public Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private deviceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDevcieItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

.field private mVibrator:Landroid/os/Vibrator;

.field private needMargin:Z

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->deviceInfos:Ljava/util/List;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->typeFace:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->needMargin:Z

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->mDevcieItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iput-boolean p3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->needMargin:Z

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->mDevcieItem:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->playClickEffect(Z)V

    return-void
.end method

.method private playClickEffect(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->getInstance()Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->playClose()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->getInstance()Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->playOpen()V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->deviceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    const/4 v3, 0x0

    if-nez p2, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x1b04005e

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->deviceInfos:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/miot/DeviceInfo;

    move-object v1, v3

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    iget-object v12, v5, Lcom/xiaomi/miot/DeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v11, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->needMargin:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->deviceInfos:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p1

    if-eq v0, v11, :cond_0

    rem-int/lit8 v11, p1, 0x2

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->deviceInfos:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_4

    :cond_0
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, 0x0

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1b0c000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    iget-boolean v11, v5, Lcom/xiaomi/miot/DeviceInfo;->isOnline:Z

    if-eqz v11, :cond_5

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    const/high16 v12, -0x1b000000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    const/high16 v12, -0x80000000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->imageIcon:Landroid/widget/ImageView;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_2
    new-instance v11, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;

    invoke-direct {v11, p0, v1, v5}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;Lcom/xiaomi/miot/DeviceInfo;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, v5, Lcom/xiaomi/miot/DeviceInfo;->subtitleMap:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->imageIcon:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mStatusContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    iget-object v12, v5, Lcom/xiaomi/miot/DeviceInfo;->subtitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v5, Lcom/xiaomi/miot/DeviceInfo;->did:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_ir"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->imageIcon:Landroid/widget/ImageView;

    const v12, 0x1b02014f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_3
    iget-boolean v11, v5, Lcom/xiaomi/miot/DeviceInfo;->showSlideButton:Z

    if-eqz v11, :cond_d

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v11, v5, Lcom/xiaomi/miot/DeviceInfo;->isOnline:Z

    if-eqz v11, :cond_c

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-boolean v11, v5, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    if-eqz v11, :cond_b

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const v12, 0x1b02026e

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const v12, 0x1b02026b

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    iget-boolean v12, v5, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    new-instance v12, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    invoke-direct {v12, p0, v1, v5}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;Lcom/xiaomi/miot/DeviceInfo;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    return-object p2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_4
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, 0x0

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v11, 0x0

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_5
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    const/high16 v12, 0x30000000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    const/high16 v12, 0x30000000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->imageIcon:Landroid/widget/ImageView;

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_6
    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v11

    iget-object v12, v5, Lcom/xiaomi/miot/DeviceInfo;->icon:Ljava/lang/String;

    const-string/jumbo v13, "UTF-8"

    invoke-static {v12, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->imageIcon:Landroid/widget/ImageView;

    iget-object v14, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v11, v12, v13, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v11

    goto/16 :goto_3

    :cond_7
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->imageIcon:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mStatusContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v11, v5, Lcom/xiaomi/miot/DeviceInfo;->subtitleMap:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const v12, 0x1b040043

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v12, 0x1b09013e

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x1b09013d

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->typeFace:Landroid/graphics/Typeface;

    if-nez v12, :cond_8

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string/jumbo v13, "miot_device_numbers.ttf"

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    iput-object v12, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->typeFace:Landroid/graphics/Typeface;

    :cond_8
    iget-boolean v12, v5, Lcom/xiaomi/miot/DeviceInfo;->isOnline:Z

    if-eqz v12, :cond_9

    const/high16 v12, -0x80000000

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, -0x80000000

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_8
    iget-object v12, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v12, v5, Lcom/xiaomi/miot/DeviceInfo;->subtitleMap:Landroid/os/Bundle;

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_9
    const/high16 v12, 0x30000000

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x30000000

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_a
    if-eqz v2, :cond_2

    const v11, 0x1b09013f

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const v12, 0x1b02026d

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_c
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const v12, 0x1b02026c

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_d
    iget-object v11, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public setDeviceInfo(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/miot/DeviceInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->deviceInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->deviceInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->deviceInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
