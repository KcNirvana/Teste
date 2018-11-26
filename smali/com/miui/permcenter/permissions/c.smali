.class Lcom/miui/permcenter/permissions/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Pi:Landroid/widget/ImageView;

.field private icon:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/permissions/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/c;-><init>()V

    return-void
.end method

.method static synthetic PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/c;->Pi:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic PY(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/c;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic PZ(Lcom/miui/permcenter/permissions/c;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/c;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic Qa(Lcom/miui/permcenter/permissions/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/c;->Pi:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic Qb(Lcom/miui/permcenter/permissions/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/c;->icon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic Qc(Lcom/miui/permcenter/permissions/c;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/c;->title:Landroid/widget/TextView;

    return-object p1
.end method
