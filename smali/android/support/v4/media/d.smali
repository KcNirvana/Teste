.class Landroid/support/v4/media/d;
.super Landroid/support/v4/media/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/d$a;
    }
.end annotation


# direct methods
.method public static h(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1

    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
