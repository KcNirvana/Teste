.class final Lcom/miui/antivirus/ui/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aqQ:Lcom/miui/antivirus/ui/c;

.field final synthetic aqR:Lcom/miui/antivirus/ui/d;

.field final synthetic aqS:Z


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/c;Lcom/miui/antivirus/ui/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/l;->aqQ:Lcom/miui/antivirus/ui/c;

    iput-object p2, p0, Lcom/miui/antivirus/ui/l;->aqR:Lcom/miui/antivirus/ui/d;

    iput-boolean p3, p0, Lcom/miui/antivirus/ui/l;->aqS:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/l;->aqQ:Lcom/miui/antivirus/ui/c;

    invoke-static {v0}, Lcom/miui/antivirus/ui/c;->awq(Lcom/miui/antivirus/ui/c;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/l;->aqR:Lcom/miui/antivirus/ui/d;

    iget-object v1, v1, Lcom/miui/antivirus/ui/d;->slidingButton:Lmiui/widget/SlidingButton;

    iget-boolean v2, p0, Lcom/miui/antivirus/ui/l;->aqS:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
