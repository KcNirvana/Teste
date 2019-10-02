.class public Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;
.super Landroid/app/Activity;
.source "TakeoverInAppActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static final INTENT_ID_KEY:Ljava/lang/String; = "com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.INTENT_ID_KEY"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.TakeoverInAppActivity"


# instance fields
.field private mIntentId:I

.field private mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

.field private mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mIntentId:I

    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;)I
    .locals 0

    iget p0, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mIntentId:I

    return p0
.end method

.method static synthetic access$100(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object p0
.end method

.method private onCreateInAppNotification()V
    .locals 14

    sget v0, Lcom/mixpanel/android/R$layout;->com_mixpanel_android_activity_notification_full:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->setContentView(I)V

    sget v0, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_gradient:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_image:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/mixpanel/android/takeoverinapp/FadingImageView;

    sget v1, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_title:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    sget v1, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_subtext:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_button:I

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lcom/mixpanel/android/R$id;->com_mixpanel_android_notification_second_button:I

    invoke-virtual {p0, v2}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lcom/mixpanel/android/R$id;->com_mixpanel_android_button_exit_wrapper:I

    invoke-virtual {p0, v2}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    sget v2, Lcom/mixpanel/android/R$id;->com_mixpanel_android_image_close:I

    invoke-virtual {p0, v2}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDisplayState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v8

    check-cast v8, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;->getInAppNotification()Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v8

    check-cast v8, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;

    invoke-virtual {p0}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v9, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v9, v11, :cond_0

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    const v13, 0x3d75c28f    # 0.06f

    mul-float v10, v10, v13

    float-to-int v10, v10

    invoke-virtual {v9, v12, v12, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->setShouldShowShadow()Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->showShadow(Z)V

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getBackgroundColor()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->hasTitle()Z

    move-result v0

    const/16 v9, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getTitleColor()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getBodyColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_3

    invoke-virtual {v8, v12}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getButton(I)Lcom/mixpanel/android/mpmetrics/InAppButton;

    move-result-object v0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    invoke-direct {p0, v9, v0, v8, v12}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->setUpInAppButton(Landroid/widget/Button;Lcom/mixpanel/android/mpmetrics/InAppButton;Lcom/mixpanel/android/mpmetrics/InAppNotification;I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getNumButtons()I

    move-result v0

    if-ne v0, v11, :cond_4

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, -0x2

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/TakeoverInAppNotification;->getCloseColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$1;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$1;-><init>(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->setUpNotificationAnimations(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private setUpInAppButton(Landroid/widget/Button;Lcom/mixpanel/android/mpmetrics/InAppButton;Lcom/mixpanel/android/mpmetrics/InAppNotification;I)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/InAppButton;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/InAppButton;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/InAppButton;->getBackgroundColor()I

    move-result v1

    const v2, 0x33868686

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/InAppButton;->getBackgroundColor()I

    move-result v1

    invoke-static {v1, v2}, Lcom/mixpanel/android/util/ViewUtils;->mixColors(II)I

    move-result v2

    :cond_0
    new-instance v1, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$2;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$2;-><init>(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;ILandroid/graphics/drawable/GradientDrawable;Lcom/mixpanel/android/mpmetrics/InAppButton;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/InAppButton;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p0}, Lcom/mixpanel/android/util/ViewUtils;->dpToPx(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/InAppButton;->getBorderColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1, p0}, Lcom/mixpanel/android/util/ViewUtils;->dpToPx(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity$3;-><init>(Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;Lcom/mixpanel/android/mpmetrics/InAppButton;Lcom/mixpanel/android/mpmetrics/InAppNotification;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setUpNotificationAnimations(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/Button;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/mixpanel/android/R$anim;->com_mixpanel_android_fade_in:I

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object/from16 v2, p5

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget v0, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mIntentId:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->releaseDisplayState(I)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.INTENT_ID_KEY"

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mIntentId:I

    iget p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mIntentId:I

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->claimDisplayState(I)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    if-nez p1, :cond_0

    const-string p1, "MixpanelAPI.TakeoverInAppActivity"

    const-string v0, "TakeoverInAppActivity intent received, but nothing was found to show."

    invoke-static {p1, v0}, Lcom/mixpanel/android/util/MPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mUpdateDisplayState:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->mMixpanel:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-direct {p0}, Lcom/mixpanel/android/takeoverinapp/TakeoverInAppActivity;->onCreateInAppNotification()V

    return-void
.end method
