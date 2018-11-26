.class final Lcom/miui/powercenter/bootshutdown/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic aGN:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field final synthetic aGO:Lcom/miui/powercenter/bootshutdown/b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;Lcom/miui/powercenter/bootshutdown/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/m;->aGN:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object p2, p0, Lcom/miui/powercenter/bootshutdown/m;->aGO:Lcom/miui/powercenter/bootshutdown/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/m;->aGO:Lcom/miui/powercenter/bootshutdown/b;

    invoke-virtual {v0, p2, p3}, Lcom/miui/powercenter/bootshutdown/b;->aSJ(IZ)V

    return-void
.end method
