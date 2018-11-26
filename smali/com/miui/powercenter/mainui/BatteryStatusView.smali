.class public Lcom/miui/powercenter/mainui/BatteryStatusView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static aNW:I

.field private static aOc:I

.field private static aOd:J

.field private static aOe:Z

.field private static aOf:I


# instance fields
.field private aNX:Landroid/content/BroadcastReceiver;

.field private aNY:Lcom/miui/powercenter/view/BatteryStatusValueText;

.field private aNZ:Landroid/widget/TextView;

.field private aOa:Landroid/widget/TextView;

.field private aOb:Lcom/miui/powercenter/view/BatteryStatusValueText;

.field private aOg:Lcom/miui/powercenter/view/BatteryStatusValueText;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOe:Z

    sput v2, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOc:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOd:J

    sput v2, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/powercenter/mainui/d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/mainui/d;-><init>(Lcom/miui/powercenter/mainui/BatteryStatusView;)V

    iput-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNX:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030117

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNZ:Landroid/widget/TextView;

    const v0, 0x7f0a0336

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/view/BatteryStatusValueText;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOb:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const v0, 0x7f0a0337

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOa:Landroid/widget/TextView;

    const v0, 0x7f0a0332

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/view/BatteryStatusValueText;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOg:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const v0, 0x7f0a0333

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/view/BatteryStatusValueText;

    iput-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNY:Lcom/miui/powercenter/view/BatteryStatusValueText;

    sget v0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNW:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baA(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNW:I

    :cond_0
    sget v0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNW:I

    invoke-direct {p0, v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcM(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcP()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNX:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private bcK()I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "temperature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private bcL()V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/mainui/a;

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/mainui/a;-><init>(Lcom/miui/powercenter/mainui/BatteryStatusView;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bcM(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNY:Lcom/miui/powercenter/view/BatteryStatusValueText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/BatteryStatusValueText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bcN()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baJ(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/powercenter/a/a;->baD(Landroid/content/Context;)I

    move-result v2

    sget-boolean v3, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOe:Z

    if-ne v3, v0, :cond_0

    sget v3, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOc:I

    if-ne v3, v1, :cond_0

    sget v3, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOf:I

    if-ne v3, v2, :cond_0

    sget-wide v0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOd:J

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcO(J)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOb:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const v1, 0x7f070497

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/BatteryStatusValueText;->setText(I)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOa:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcL()V

    return-void
.end method

.method private bcO(J)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_0

    const-wide/32 v0, 0x927c0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOb:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const v1, 0x7f0704bb

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/BatteryStatusValueText;->setText(I)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOa:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOb:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const v1, 0x7f070498

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/BatteryStatusValueText;->setText(I)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOa:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOb:Lcom/miui/powercenter/view/BatteryStatusValueText;

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/BatteryStatusValueText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOa:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic bcQ(Lcom/miui/powercenter/mainui/BatteryStatusView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOa:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic bcR(Lcom/miui/powercenter/mainui/BatteryStatusView;)Lcom/miui/powercenter/view/BatteryStatusValueText;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOb:Lcom/miui/powercenter/view/BatteryStatusValueText;

    return-object v0
.end method

.method static synthetic bcS(I)I
    .locals 0

    sput p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOc:I

    return p0
.end method

.method static synthetic bcT(J)J
    .locals 0

    sput-wide p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOd:J

    return-wide p0
.end method

.method static synthetic bcU(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOe:Z

    return p0
.end method

.method static synthetic bcV(I)I
    .locals 0

    sput p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOf:I

    return p0
.end method

.method static synthetic bcW(Lcom/miui/powercenter/mainui/BatteryStatusView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcO(J)V

    return-void
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/miui/powercenter/a/d;->bbj(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bcJ()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNX:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public bcP()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baJ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNZ:Landroid/widget/TextView;

    const v1, 0x7f070494

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcN()V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aOg:Lcom/miui/powercenter/view/BatteryStatusValueText;

    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcK()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/BatteryStatusValueText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->aNZ:Landroid/widget/TextView;

    const v1, 0x7f070493

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
