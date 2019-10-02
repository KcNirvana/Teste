.class public Lcom/miui/video/global/view/PersonalItemView;
.super Landroid/widget/RelativeLayout;
.source "PersonalItemView.java"


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTarget:Ljava/lang/String;

.field private vIconLeft:Landroid/widget/ImageView;

.field private vIconRight:Landroid/widget/ImageView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/global/view/PersonalItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/global/view/PersonalItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/video/global/view/PersonalItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p2}, Lcom/miui/video/global/view/PersonalItemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/global/view/PersonalItemView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/global/view/PersonalItemView;->mTarget:Ljava/lang/String;

    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/global/view/PersonalItemView;->initFindView()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/video/global/view/PersonalItemView;->initViewValue(Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method private initFindView()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/global/view/PersonalItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00e4

    invoke-static {v0, v1, p0}, Lcom/miui/video/global/view/PersonalItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090391

    invoke-virtual {p0, v0}, Lcom/miui/video/global/view/PersonalItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->vIconLeft:Landroid/widget/ImageView;

    const v0, 0x7f090392

    invoke-virtual {p0, v0}, Lcom/miui/video/global/view/PersonalItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->vIconRight:Landroid/widget/ImageView;

    const v0, 0x7f09044a

    invoke-virtual {p0, v0}, Lcom/miui/video/global/view/PersonalItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method private initViewValue(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/global/view/PersonalItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/video/global/R$styleable;->PersonalItemView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->vIconLeft:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->vIconRight:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->vTitle:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->mTarget:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/global/view/PersonalItemView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/global/view/PersonalItemView$1;-><init>(Lcom/miui/video/global/view/PersonalItemView;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/global/view/PersonalItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/view/PersonalItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onClickListener()V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->mTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/view/PersonalItemView;->mTarget:Ljava/lang/String;

    const-string v1, "Subscribe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/global/view/PersonalItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "account"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/video/base/routers/pgc/PgcUtil;->openSubscribedPage(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/video/global/view/PersonalItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/global/view/PersonalItemView;->mTarget:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method

.method public setIconLeft(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/view/PersonalItemView;->vIconLeft:Landroid/widget/ImageView;

    return-void
.end method

.method public setIconRight(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/view/PersonalItemView;->vIconRight:Landroid/widget/ImageView;

    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/view/PersonalItemView;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setmOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/view/PersonalItemView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
