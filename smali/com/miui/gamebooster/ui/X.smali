.class final Lcom/miui/gamebooster/ui/X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic dq:Lcom/miui/gamebooster/ui/c;

.field final synthetic dr:Lcom/miui/gamebooster/ui/g;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/X;->dq:Lcom/miui/gamebooster/ui/c;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/X;->dr:Lcom/miui/gamebooster/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/X;->dr:Lcom/miui/gamebooster/ui/g;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/g;->bX(Ljava/lang/Boolean;)V

    return-void
.end method
