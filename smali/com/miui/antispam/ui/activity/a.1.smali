.class Lcom/miui/antispam/ui/activity/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic RK:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/a;->RK:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;Lcom/miui/antispam/ui/activity/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/a;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/a;->RK:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->finish()V

    return-void
.end method
