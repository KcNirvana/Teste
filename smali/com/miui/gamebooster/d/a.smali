.class public Lcom/miui/gamebooster/d/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;

.field private rZ:I

.field private sa:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private sb:Landroid/widget/RelativeLayout;

.field private sc:Landroid/widget/CheckBox;

.field private sd:Z

.field private se:Lcom/miui/gamebooster/customview/FirstWindowItem;

.field private sf:Lcom/miui/gamebooster/customview/FirstWindowItem;

.field private sg:Lcom/miui/gamebooster/customview/FirstWindowItem;

.field private sh:I

.field private si:Landroid/widget/RelativeLayout;

.field private sj:I

.field private sk:Landroid/view/View;

.field private sl:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

.field private sm:Landroid/widget/ImageButton;

.field private sn:Landroid/widget/LinearLayout;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/d/c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/d/c;-><init>(Lcom/miui/gamebooster/d/a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/gamebooster/d/d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/d/d;-><init>(Lcom/miui/gamebooster/d/a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->sa:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p1, p0, Lcom/miui/gamebooster/d/a;->sl:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic uC(Lcom/miui/gamebooster/d/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic uD(Lcom/miui/gamebooster/d/a;)Lcom/miui/gamebooster/customview/FirstWindowItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->se:Lcom/miui/gamebooster/customview/FirstWindowItem;

    return-object v0
.end method

.method static synthetic uE(Lcom/miui/gamebooster/d/a;)Lcom/miui/gamebooster/customview/FirstWindowItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sf:Lcom/miui/gamebooster/customview/FirstWindowItem;

    return-object v0
.end method

.method static synthetic uF(Lcom/miui/gamebooster/d/a;)Lcom/miui/gamebooster/customview/FirstWindowItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sg:Lcom/miui/gamebooster/customview/FirstWindowItem;

    return-object v0
.end method


# virtual methods
.method public uA()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sc:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/n;->fX(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->ul(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->ul(Z)V

    const-string/jumbo v1, "GameBoosterFirstWindowManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uB()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.gamebooster.action.START_GAMEMODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public uy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/d/a;->sd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/d/a;->sd:Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GameBoosterFirstWindowManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uz(Z)V
    .locals 10

    const v1, 0x7f02017b

    const/4 v9, 0x1

    const/4 v4, -0x1

    iget-boolean v0, p0, Lcom/miui/gamebooster/d/a;->sd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "GameBoosterFirstWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHorizontal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x108

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x51

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x7f0b006e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    if-eqz p1, :cond_1

    const v0, 0x7f0300b4

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    const v2, 0x7f0a0214

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->si:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    const v2, 0x7f0a0215

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->sb:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    const v2, 0x7f0a0047

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->sm:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    const v2, 0x7f0a0219

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/FirstWindowItem;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->sf:Lcom/miui/gamebooster/customview/FirstWindowItem;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    const v2, 0x7f0a021a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/FirstWindowItem;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->sg:Lcom/miui/gamebooster/customview/FirstWindowItem;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    const v2, 0x7f0a021b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/FirstWindowItem;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->se:Lcom/miui/gamebooster/customview/FirstWindowItem;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    const v2, 0x7f0a021e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->sn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    const v2, 0x7f0a021c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/gamebooster/d/a;->sc:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/miui/gamebooster/d/a;->sh:I

    if-eqz p1, :cond_3

    const v0, 0x7f02015d

    :goto_2
    iput v0, p0, Lcom/miui/gamebooster/d/a;->rZ:I

    :goto_3
    if-eqz p1, :cond_7

    const v0, 0x7f02017d

    :goto_4
    iput v0, p0, Lcom/miui/gamebooster/d/a;->sj:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07098e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070980

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_5
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07098d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f07098f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070991

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    iget-object v3, p0, Lcom/miui/gamebooster/d/a;->sf:Lcom/miui/gamebooster/customview/FirstWindowItem;

    iget-object v7, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/miui/gamebooster/d/a;->sh:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7, v4, v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->kd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sg:Lcom/miui/gamebooster/customview/FirstWindowItem;

    iget-object v3, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/miui/gamebooster/d/a;->sj:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5, v6}, Lcom/miui/gamebooster/customview/FirstWindowItem;->kd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->se:Lcom/miui/gamebooster/customview/FirstWindowItem;

    iget-object v3, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/miui/gamebooster/d/a;->rZ:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/gamebooster/customview/FirstWindowItem;->kd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sf:Lcom/miui/gamebooster/customview/FirstWindowItem;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->getButton()Lmiui/widget/SlidingButton;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->sa:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sg:Lcom/miui/gamebooster/customview/FirstWindowItem;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->getButton()Lmiui/widget/SlidingButton;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->sa:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->se:Lcom/miui/gamebooster/customview/FirstWindowItem;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/FirstWindowItem;->getButton()Lmiui/widget/SlidingButton;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->sa:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->sk:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/d/a;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gV(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/miui/gamebooster/d/a;->sd:Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->si:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sn:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->sm:Landroid/widget/ImageButton;

    new-instance v1, Lcom/miui/gamebooster/d/e;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/d/e;-><init>(Lcom/miui/gamebooster/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const v0, 0x7f0300b7

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f02017f

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f02015c

    goto/16 :goto_2

    :cond_4
    if-eqz p1, :cond_5

    :goto_8
    iput v1, p0, Lcom/miui/gamebooster/d/a;->sh:I

    if-eqz p1, :cond_6

    const v0, 0x7f02015b

    :goto_9
    iput v0, p0, Lcom/miui/gamebooster/d/a;->rZ:I

    goto/16 :goto_3

    :cond_5
    const v1, 0x7f02017c

    goto :goto_8

    :cond_6
    const v0, 0x7f02015a

    goto :goto_9

    :cond_7
    const v0, 0x7f02017e

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070990

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07098c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_a
    iget-object v1, p0, Lcom/miui/gamebooster/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070992

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7
.end method
