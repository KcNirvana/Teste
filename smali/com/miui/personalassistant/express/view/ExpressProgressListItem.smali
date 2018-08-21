.class public Lcom/miui/personalassistant/express/view/ExpressProgressListItem;
.super Landroid/widget/LinearLayout;
.source "ExpressProgressListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;
    }
.end annotation


# static fields
.field private static final PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mProgressText:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "1[3|4|5|7|8][0-9]\\d{8}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/express/view/ExpressProgressListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setProgressText(Lcom/miui/personalassistant/express/bean/DetailEntry;)V
    .locals 10

    const/16 v9, 0x21

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;

    new-instance v7, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$1;

    invoke-direct {v7, p0, v3}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$1;-><init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;-><init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isBoxCode()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_2
    invoke-static {}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isOpenGui()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mContext:Landroid/content/Context;

    const v7, 0x1b0b05f8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "\n"

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;

    new-instance v7, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$2;

    invoke-direct {v7, p0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$2;-><init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem;)V

    invoke-direct {v6, v7}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;-><init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    invoke-static {}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isScheduleDelivery()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mContext:Landroid/content/Context;

    const v7, 0x1b0b05fb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;

    new-instance v7, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$3;

    invoke-direct {v7, p0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$3;-><init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem;)V

    invoke-direct {v6, v7}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;-><init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    iget-object v6, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mProgressText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0
.end method

.method private setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTimeText(Lcom/miui/personalassistant/express/bean/DetailEntry;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mDate:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mTime:Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showCallPhoneDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0069

    new-instance v2, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$4;

    invoke-direct {v2, p1, p0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$4;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/personalassistant/express/bean/DetailEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->setProgressText(Lcom/miui/personalassistant/express/bean/DetailEntry;)V

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->setTimeText(Lcom/miui/personalassistant/express/bean/DetailEntry;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isLast()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x1b02015d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->getStateFlag()I

    move-result v1

    invoke-static {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->valueOf(I)Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$5;->$SwitchMap$com$miui$personalassistant$express$bean$ExpressState:[I

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x1b020159

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/DetailEntry;->isLast()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x1b02015a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x1b02015b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->setTextColor(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->setTextColor(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mIcon:Landroid/widget/ImageView;

    const v2, 0x1b02015c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->setTextColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->setTextColor(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b09021a

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1b09021b

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mProgressText:Landroid/widget/TextView;

    const v0, 0x1b090218

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mDate:Landroid/widget/TextView;

    const v0, 0x1b090219

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem;->mTime:Landroid/widget/TextView;

    return-void
.end method
