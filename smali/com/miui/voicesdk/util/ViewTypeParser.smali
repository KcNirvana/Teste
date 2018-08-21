.class public Lcom/miui/voicesdk/util/ViewTypeParser;
.super Ljava/lang/Object;
.source "ViewTypeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voicesdk/util/ViewTypeParser$ViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTypeParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/miui/voicesdk/util/ViewTypeParser$ViewType;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ListView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "RecyclerView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ScrollView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    sget-object v1, Lcom/miui/voicesdk/util/ViewTypeParser$ViewType;->SCROLL:Lcom/miui/voicesdk/util/ViewTypeParser$ViewType;

    goto :goto_0
.end method
