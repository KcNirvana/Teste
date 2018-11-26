.class final Lcom/miui/antispam/ui/activity/U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Vd:Lcom/miui/antispam/ui/activity/k;

.field final synthetic Ve:I

.field final synthetic Vf:J

.field final synthetic Vg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/k;IJLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/U;->Vd:Lcom/miui/antispam/ui/activity/k;

    iput p2, p0, Lcom/miui/antispam/ui/activity/U;->Ve:I

    iput-wide p3, p0, Lcom/miui/antispam/ui/activity/U;->Vf:J

    iput-object p5, p0, Lcom/miui/antispam/ui/activity/U;->Vg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/U;->Vd:Lcom/miui/antispam/ui/activity/k;

    iget v1, p0, Lcom/miui/antispam/ui/activity/U;->Ve:I

    iget-wide v2, p0, Lcom/miui/antispam/ui/activity/U;->Vf:J

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/U;->Vg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/antispam/ui/activity/k;->Ux(IJLjava/lang/String;)V

    return-void
.end method
