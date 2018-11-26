.class final Lcom/miui/antivirus/activity/l;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic asN:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/l;->asN:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/l;->asN:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->ayh(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method
