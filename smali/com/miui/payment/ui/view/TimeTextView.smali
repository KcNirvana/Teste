.class public Lcom/miui/payment/ui/view/TimeTextView;
.super Landroid/widget/FrameLayout;
.source "TimeTextView.java"


# instance fields
.field private mExpandButton:Landroid/widget/ImageView;

.field private mTime:J

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/payment/ui/view/TimeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/payment/ui/view/TimeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTime:J

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1b090219

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/view/TimeTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTimeView:Landroid/widget/TextView;

    const v0, 0x1b09031e

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/view/TimeTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/payment/ui/view/TimeTextView;->mExpandButton:Landroid/widget/ImageView;

    return-void
.end method

.method public setEditable(Z)V
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/ui/view/TimeTextView;->mExpandButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTimeView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/TimeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1b0f006f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/payment/ui/view/TimeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1b0f0070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public setText(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/payment/ui/view/TimeTextView;->setText(JZ)V

    return-void
.end method

.method public setText(JZ)V
    .locals 7

    const/4 v4, 0x1

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide p1, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTime:J

    iget-wide v2, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTime:J

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    invoke-virtual {v0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTimeView:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    iget-wide v4, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTime:J

    const/16 v2, 0x18c

    invoke-static {v4, v5, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTime:J

    const/16 v2, 0x180

    invoke-static {v4, v5, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTimeView:Landroid/widget/TextView;

    if-eqz p3, :cond_3

    iget-wide v4, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTime:J

    const/16 v2, 0x38c

    invoke-static {v4, v5, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-wide v4, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTime:J

    const/16 v2, 0x380

    invoke-static {v4, v5, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public updateTime(IIIZ)V
    .locals 4

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iget-wide v2, p0, Lcom/miui/payment/ui/view/TimeTextView;->mTime:J

    invoke-virtual {v0, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p4}, Lcom/miui/payment/ui/view/TimeTextView;->setText(JZ)V

    return-void
.end method
