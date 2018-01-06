.class Lcom/miui/weather2/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySetCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ad;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
