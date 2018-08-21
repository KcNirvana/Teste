.class public Lcom/android/calendarcommon2/ICalendar$Component;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# static fields
.field static final BEGIN:Ljava/lang/String; = "BEGIN"

.field static final END:Ljava/lang/String; = "END"

.field private static final NEWLINE:Ljava/lang/String; = "\n"

.field public static final VALARM:Ljava/lang/String; = "VALARM"

.field public static final VCALENDAR:Ljava/lang/String; = "VCALENDAR"

.field public static final VEVENT:Ljava/lang/String; = "VEVENT"

.field public static final VFREEBUSY:Ljava/lang/String; = "VFREEBUSY"

.field public static final VJOURNAL:Ljava/lang/String; = "VJOURNAL"

.field public static final VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field public static final VTODO:Ljava/lang/String; = "VTODO"


# instance fields
.field private mChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Component;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mParent:Lcom/android/calendarcommon2/ICalendar$Component;

.field private final mPropsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/calendarcommon2/ICalendar$Component;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mParent:Lcom/android/calendarcommon2/ICalendar$Component;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/calendarcommon2/ICalendar$Component;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Component;->getOrCreateChildren()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/calendarcommon2/ICalendar$Property;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;
    .locals 2

    iget-object v1, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon2/ICalendar$Property;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getOrCreateChildren()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Component;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getParent()Lcom/android/calendarcommon2/ICalendar$Component;
    .locals 1

    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mParent:Lcom/android/calendarcommon2/ICalendar$Component;

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/calendarcommon2/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 6

    const-string/jumbo v5, "BEGIN"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-virtual {v3, p1}, Lcom/android/calendarcommon2/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    const-string/jumbo v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendarcommon2/ICalendar$Component;

    invoke-virtual {v0, p1}, Lcom/android/calendarcommon2/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    const-string/jumbo v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "END"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
