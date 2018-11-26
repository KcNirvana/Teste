.class Lcom/miui/applicationlock/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic aez:Lcom/miui/applicationlock/b;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/c;->aez:Lcom/miui/applicationlock/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/b;Lcom/miui/applicationlock/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/c;-><init>(Lcom/miui/applicationlock/b;)V

    return-void
.end method

.method static synthetic akv(Lcom/miui/applicationlock/c;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/c;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic akw(Lcom/miui/applicationlock/c;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/c;->title:Landroid/widget/TextView;

    return-object p1
.end method
