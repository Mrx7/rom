.class public Lcom/htc/view/NavigationBarConfiguration;
.super Ljava/lang/Object;
.source "NavigationBarConfiguration.java"


# static fields
.field public static final ACTION_DATA_TIP_NEVERSHOW:Ljava/lang/String; = "neverShow"

.field public static final ACTION_TIP_NEVERSHOW:Ljava/lang/String; = "android.intent.action.NEVER_SHOW_MENU"

.field public static final DEBUG_NAV_BAR:Z

.field private static final PROP_DEBUG_NAVI_BAR:Ljava/lang/String; = "debug_nav_bar"

.field public static final PROP_TIP_NEVERSHOW:Ljava/lang/String; = "persist.sys.navtips.nevershow"

.field private static final TAG:Ljava/lang/String; = "NavigationBarConfiguration"

.field private static final WVGA_HEIGHT:I = 0x320

.field private static final WVGA_WIDTH:I = 0x1e0

.field private static mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mConfigShowNavbar:Ljava/lang/Boolean;

.field private static mHasMenuKey:Ljava/lang/Boolean;

.field private static mHtcNavigationBar:Ljava/lang/Boolean;

.field private static mIsLessEqualWVGA:Ljava/lang/Boolean;

.field private static mNoAffectComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "debug_nav_bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHasMenuKey:Ljava/lang/Boolean;

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mConfigShowNavbar:Ljava/lang/Boolean;

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHtcNavigationBar:Ljava/lang/Boolean;

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    invoke-static {}, Lcom/htc/view/NavigationBarConfiguration;->loadBlackList()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsLessEqualWVGA="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasMenuKey="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mHasMenuKey:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "config_showNavigationBar="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mConfigShowNavbar:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private static final isComponentInNoAffectList(Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .local v0, "strComponent":Ljava/lang/String;
    sget-boolean v1, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    if-eqz v1, :cond_1

    const-string v1, "NavigationBarConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static final isLessEqualWVGA(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .local v0, "display":Landroid/view/Display;
    if-eqz p0, :cond_0

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    invoke-static {v0}, Lcom/htc/view/NavigationBarConfiguration;->isLessEqualWVGA(Landroid/view/Display;)Z

    move-result v2

    return v2
.end method

.method public static final isLessEqualWVGA(Landroid/view/Display;)Z
    .locals 9
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    const/16 v8, 0x320

    const/16 v7, 0x1e0

    const-string v4, "NavigationBarConfiguration"

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const-string v3, "NavigationBarConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get the default display from WindowManager, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v4

    :goto_0
    return v3

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .local v2, "outSize":Landroid/graphics/Point;
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    .local v1, "nWidth":I
    iget v0, v2, Landroid/graphics/Point;->y:I

    .local v0, "nHeight":I
    sget-boolean v3, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    if-eqz v3, :cond_1

    const-string v3, "NavigationBarConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display resolution is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-gt v1, v7, :cond_2

    if-le v0, v8, :cond_3

    :cond_2
    if-gt v1, v8, :cond_4

    if-gt v0, v7, :cond_4

    :cond_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    .end local v0    # "nHeight":I
    .end local v1    # "nWidth":I
    .end local v2    # "outSize":Landroid/graphics/Point;
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/htc/view/NavigationBarConfiguration;->mIsLessEqualWVGA:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static final isPackageInBlackList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strPackageName"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isUpdateNavigationBarVisibility(Landroid/view/Display;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    invoke-static {p0}, Lcom/htc/view/NavigationBarConfiguration;->isLessEqualWVGA(Landroid/view/Display;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/htc/view/NavigationBarConfiguration;->isComponentInNoAffectList(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadBlackList()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.books"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.translate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.melimots.WordSearch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.mobilityware.solitaire"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "net.cdeguet.smartkeyboardpro"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.rubicon.dev.glwg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.sinovatech.unicom.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mBlockedPackages:Ljava/util/HashSet;

    const-string v1, "com.neusoft.td.android.wo116114"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "com.htc/.HtcLinkifyDispatcher"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "com.zdworks.android.toolbox/.ui.widget.BrightnessActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "android/com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "com.domobile.applock/.GuideActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/view/NavigationBarConfiguration;->mNoAffectComponents:Ljava/util/HashSet;

    const-string v1, "android/com.android.internal.app.ChooserActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static showHtcNavigationBar(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, "NavigationBarConfiguration"

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHtcNavigationBar:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    const-string v2, "qemu.hw.mainkeys"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "navBarOverride":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHtcNavigationBar:Ljava/lang/Boolean;

    :goto_0
    sget-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHtcNavigationBar:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v3

    .end local v1    # "navBarOverride":Ljava/lang/String;
    :goto_1
    return v2

    .restart local v1    # "navBarOverride":Ljava/lang/String;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHtcNavigationBar:Ljava/lang/Boolean;

    goto :goto_0

    .end local v1    # "navBarOverride":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "navBarOverride":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHtcNavigationBar:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110045

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mConfigShowNavbar:Ljava/lang/Boolean;

    sget-object v2, Lcom/htc/view/NavigationBarConfiguration;->mConfigShowNavbar:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x52

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHasMenuKey:Ljava/lang/Boolean;

    sget-boolean v2, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    if-eqz v2, :cond_2

    const-string v2, "NavigationBarConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasMenuKey(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/view/NavigationBarConfiguration;->mHasMenuKey:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHasMenuKey:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHtcNavigationBar:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "navBarOverride":Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v2, Lcom/htc/view/NavigationBarConfiguration;->mHtcNavigationBar:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    .restart local v1    # "navBarOverride":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v2, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    if-eqz v2, :cond_3

    const-string v2, "NavigationBarConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasMenuKey failed due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public static updateNeverShowTip(Z)V
    .locals 3
    .param p0, "neverShow"    # Z

    .prologue
    const-string v0, "persist.sys.navtips.nevershow"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/htc/view/NavigationBarConfiguration;->DEBUG_NAV_BAR:Z

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update persist.sys.navtips.nevershow to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method