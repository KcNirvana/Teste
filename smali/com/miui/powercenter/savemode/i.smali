.class final Lcom/miui/powercenter/savemode/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aOB:Lcom/miui/powercenter/savemode/b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/i;->aOB:Lcom/miui/powercenter/savemode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/powercenter/a;->bfx(Z)V

    return-void
.end method
