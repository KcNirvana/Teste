.class final Lcom/miui/antivirus/activity/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ath:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/B;->ath:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/B;->ath:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axT(Lcom/miui/antivirus/activity/MainActivity;)V

    const-string/jumbo v0, "cancel"

    invoke-static {v0}, Lcom/miui/antivirus/a/d;->azu(Ljava/lang/String;)V

    return-void
.end method
