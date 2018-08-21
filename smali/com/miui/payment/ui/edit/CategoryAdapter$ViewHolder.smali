.class Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/edit/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/payment/ui/edit/CategoryAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/CategoryAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    return-object p1
.end method
