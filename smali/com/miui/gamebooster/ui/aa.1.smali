.class final Lcom/miui/gamebooster/ui/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dw:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aa;->dw:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gY(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
