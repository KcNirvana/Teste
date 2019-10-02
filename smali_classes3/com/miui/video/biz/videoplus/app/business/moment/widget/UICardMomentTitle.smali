.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UICardMomentTitle.java"


# static fields
.field public static final ACTION_ENTER_EDIT_MODE:Ljava/lang/String; = "action_enter_edit_mode"

.field public static final ACTION_EXIST_EDIT_MODE:Ljava/lang/String; = "action_exist_edit_mode"


# instance fields
.field private mCheckText:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private mDay:Landroid/widget/TextView;

.field private mDayText:Landroid/widget/TextView;

.field private mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

.field private mListener:Lcom/miui/video/framework/impl/IActionListener;

.field private mLocation:Landroid/widget/TextView;

.field private mMonth:Landroid/widget/TextView;

.field private mMonthText:Landroid/widget/TextView;

.field private mOnCheckListener:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mYear:Landroid/widget/TextView;

.field private mYearText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_moment_title:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mOnCheckListener:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/framework/impl/IActionListener;)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_moment_title:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$3;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mOnCheckListener:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    iput-object p4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mOnCheckListener:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$OnCheckListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Lcom/miui/video/framework/impl/IActionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private update(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getDay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mYear:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mYearText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mMonthText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDayText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getDateDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mYear:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mYearText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mMonthText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDayText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getDateFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mLocation:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x3

    invoke-static {p1, v6}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->cancel_choose:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->choose:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/DIN_Bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->year:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mYear:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->year_txt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mYearText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->month:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mMonth:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->month_txt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mMonthText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->day:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->day_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDayText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->date_string:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mLocation:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->select_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->vView:Landroid/view/View;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-direct {p0, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->update(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;)V

    goto :goto_0

    :cond_0
    const-string p2, "action_enter_edit_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getGroupName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$string;->cancel_choose:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$string;->choose:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string p2, "action_exist_edit_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentTitle;->mCheckText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
