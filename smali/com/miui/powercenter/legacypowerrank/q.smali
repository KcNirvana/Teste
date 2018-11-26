.class final Lcom/miui/powercenter/legacypowerrank/q;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aGn:Lcom/miui/powercenter/legacypowerrank/g;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/q;->aGn:Lcom/miui/powercenter/legacypowerrank/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/q;->aGn:Lcom/miui/powercenter/legacypowerrank/g;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/g;->aRG(Lcom/miui/powercenter/legacypowerrank/g;)V

    return-void
.end method
