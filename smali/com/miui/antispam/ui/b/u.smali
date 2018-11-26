.class final Lcom/miui/antispam/ui/b/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# instance fields
.field final synthetic XA:Lcom/miui/antispam/ui/b/e;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/u;->XA:Lcom/miui/antispam/ui/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/u;->XA:Lcom/miui/antispam/ui/b/e;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/e;->VY(Lcom/miui/antispam/ui/b/e;)V

    return-void
.end method
