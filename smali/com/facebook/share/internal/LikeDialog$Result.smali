.class public final Lcom/facebook/share/internal/LikeDialog$Result;
.super Ljava/lang/Object;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$Result;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$Result;->bundle:Landroid/os/Bundle;

    return-object v0
.end method
