.class Lcom/miui/weather2/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySetCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/aa;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/aa;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivitySetCity;->finish()V

    return-void
.end method
