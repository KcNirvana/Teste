.class final Lcom/miui/permcenter/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic RA:Landroid/app/Activity;

.field final synthetic RB:J

.field final synthetic RC:I

.field final synthetic RD:Lcom/miui/permcenter/f;

.field final synthetic Rz:Lcom/miui/permcenter/p;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/p;Landroid/app/Activity;JILjava/lang/String;Lcom/miui/permcenter/f;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/permcenter/q;->Rz:Lcom/miui/permcenter/p;

    iput-object p2, p0, Lcom/miui/permcenter/q;->RA:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/miui/permcenter/q;->RB:J

    iput p5, p0, Lcom/miui/permcenter/q;->RC:I

    iput-object p6, p0, Lcom/miui/permcenter/q;->val$packageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/permcenter/q;->RD:Lcom/miui/permcenter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/permcenter/q;->RA:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/permcenter/q;->RB:J

    iget v4, p0, Lcom/miui/permcenter/q;->RC:I

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/permcenter/q;->val$packageName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v6, v5

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/permission/a;->bBV(JII[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/q;->RD:Lcom/miui/permcenter/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/q;->RD:Lcom/miui/permcenter/f;

    iget-object v1, p0, Lcom/miui/permcenter/q;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/permcenter/q;->RC:I

    invoke-interface {v0, v1, v2}, Lcom/miui/permcenter/f;->PP(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
