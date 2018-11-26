.class final Lcom/miui/powercenter/bootshutdown/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aGP:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field final synthetic aGQ:Lcom/miui/powercenter/bootshutdown/b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;Lcom/miui/powercenter/bootshutdown/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/n;->aGP:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object p2, p0, Lcom/miui/powercenter/bootshutdown/n;->aGQ:Lcom/miui/powercenter/bootshutdown/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/n;->aGP:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTq(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/n;->aGQ:Lcom/miui/powercenter/bootshutdown/b;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/b;->aSI(Lcom/miui/powercenter/bootshutdown/b;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/n;->aGP:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->aTs(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    return-void
.end method
