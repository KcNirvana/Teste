.class final Lcom/miui/gamebooster/ui/at;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dS:Lcom/miui/gamebooster/ui/i;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/at;->dS:Lcom/miui/gamebooster/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/at;->dS:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->uk(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/at;->dS:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cp(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
