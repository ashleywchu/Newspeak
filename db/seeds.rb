# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def run_seed
	make_users
	make_articles
	make_tags
	make_comments
	make_article_tags
end

def make_users
	User.create(:name => "Shawn", :email => "shawn@awesome.com", :article_rep => 1000, :comment_rep => 500, :uid => "104598241683157696733")
	User.create(:name => "Keith", :email => "keith@awesome.com", :article_rep => 9010, :comment_rep => 400, :uid => "103062603984495647486", :provider => "google_oauth2")
	User.create(:name => "Ashley", :email => "ashley@awesome.com", :article_rep => 800, :comment_rep => 300, :uid => "113638395038993757289", :provider => "google_oauth2")
	User.create(:name => "Sanj", :email => "sanj@awesome.com", :article_rep => 99999, :comment_rep => 99999, :uid => "104583935941508057228", :provider => "google_oauth2")
	User.create(:name => "Demo", :email => "future_employer@awesome.com", :article_rep => 940, :comment_rep => 520)
end

def make_articles
	Article.create(:title => "Liberty Square Raied by NYPD", :abstract => "Liberty Square (Zuccotti Park), home of Occupy Wall Street for the past two months and birthplace of the 99% movement that has spread across the country and around the world, was evicted by a large police force on 11/15/11.", :sources => ["http://www.nycga.net/2011/11/liberty-square-being-raided-by-nypd/", "http://www.youtube.com/watch?v=X2ZMkysoBXg[/youtube]", "http://www.youtube.com/watch?v=mhQCpXM-Sm4[/youtube]"], :body => "TIMELINE OF EVENTS:
6:05 a.m. Liberty Square has been cleared. General assembly under way at Foley Square.
3:36 a.m. Kitchen tent reported teargassed. Police moving in with zip cuffs.
3:33 a.m. Bulldozers moving in
3:16 a.m. Occupiers linking arms around riot police
3:15 a.m. NYPD destroying personal items. Occupiers prevented from leaving with their possessions.
3:13 a.m. NYPD deploying sound cannon
3:08 a.m. heard on livestream: “they’re bringing in the hoses.”
3:05 a.m. NYPD cutting down trees in Liberty Square
2:55 a.m. NYC council-member Ydanis Rodríguez arrested and bleeding from head.
2:44 a.m. Defiant occupiers barricaded Liberty Square kitchen
2:44 a.m. NYPD destroys OWS Library. 5,000 donated books in dumpster.
2:42 a.m. Brooklyn Bridge confirmed closed
2:38 a.m. 400-500 marching north to Foley Square
2:32 a.m. All subways but R shut down
2:29 a.m. Press helicopters evicted from airspace. NYTimes reporter arrested.
2:22 a.m. Frontpage coverage from New York Times
2:15 a.m. Occupiers who have been dispersed are regrouping at Foley Square
2:10 a.m. Press barred from entering Liberty Square
2:07 a.m. Pepper spray deployed — reports of at least one reporter sprayed
2:03 a.m. Massive Police Presence at Canal and Broadway
1:43 a.m. Helicopters overhead.
1:38 a.m. Unconfirmed reports of snipers on rooftops.
1:34 a.m. CBS News Helicopter Livestream
1:27 a.m. Unconfirmed reports that police are planning to sweep everyone.
1:20 a.m. Subway stops are closed.
1:20 a.m. Brooklyn bridge is closed.
1:20 a.m. Occupiers chanting “This is what a police state looks like.”
1:20 a.m. Police are in riot gear.
1:20 a.m. Police are bringing in bulldozers.", :rep => 10, :author_id => 2)
	Article.create(:title => "COMMUNIQUE FROM CAIRO RE: EGYPT TRIP", :abstract => "Occupy General Assembly passed a proposal authorizing $29,000 dollars to send twenty of your number to Egypt as election monitors.", :sources => "http://www.nycga.net/2011/11/communique-from-cairo-re-egypt-trip/", :body => "To our kindred occupiers in Zuccotti park,

When we called out to you, requesting you join us on 12 November in defending our revolution and in our campaign against the military trial of civilians in Egypt, your solidarity—pictures from marches, videos, and statements of support—added to our strength.

However, we recently received news that your General Assembly passed a proposal authorizing $29,000 dollars to send twenty of your number to Egypt as election monitors. Truth be told, the news rather shocked us; we spent the better part of the day simply trying to figure out who could have asked for such assistance on our behalf.

We have some concerns with the idea, and we wanted to join your conversation.

It seems to us that you have taken to the streets and occupied your parks and cities out of a dissatisfaction with the false promises of the game of electoral politics, and so did our comrades in Spain, Greece and Britain. Regardless of how one stands on the efficacy of elections or elected representatives, the Occupy movement seems outside the scope of this; your choice to occupy is, if nothing else, bigger than any election. Why then, should our elections be any cause for celebration, when even in the best of all possible worlds they will be just another supposedly “representative” body ruling in the interest of the 1% over the remaining 99% of us? This new Egyptian parliament will have effectively no powers whatsoever, and—as many of us see it—its election is just a means of legitimating the ruling junta’s seizure of the revolutionary process. Is this something you wish to monitor?

We have, all of us around the world, been learning new ways to represent ourselves, to speak, to live our politics directly and immediately, and in Egypt we did not set out to the streets in revolution simply to gain a parliament. Our struggle—which we think we share with you—is greater and grander than a neatly functioning parliamentary democracy; we demanded the fall of the regime, we demanded dignity, freedom and social justice, and we are still fighting for these goals. We do not see elections of a puppet parliament as the means to achieve them.

But even though the idea of election monitoring doesn’t really do it for us, we want your solidarity, we want your support and your visits. We want to know you, talk with you, learn one another’s lessons, compare strategies and share plans for the future. We think that activists or as people committed to serious change in the systems we live in, there is so much more that we can do together than legitimizing electoral processes (leave that boring job to the Carter Foundation) that seem so impoverished next to the new forms of democracy and social life we are building. It should be neither our job nor our desire to play the game of elections; we are occupying and we should build our spaces and our networks because they themselves are the basis on which we will build the new. Let us deepen our lines of communication and process and discover out what these new ways of working together and supporting one another could be.

Any time you do want to come over, we’ve got plenty of comfy couches available. It won’t be fancy, but it will be fun.

Yours, as always, in solidarity,

Comrades from Cairo
13 November, 2011", :rep => 5, :author_id => 2)
Article.create(:title => "Updated Secret Trans-Pacific Partnership Agreement (TPP) - IP Chapter (second publication)", :abstract => "Today, Thursday 16 October 2014, WikiLeaks released a second updated version of the Trans-Pacific Partnership (TPP) Intellectual Property Rights Chapter. Full press release here: https://wikileaks.org/tpp-ip2/pressrelease/", :sources => "https://wikileaks.org/tpp-ip2/", :body => "Today, Thursday 16 October 2014, WikiLeaks released a second updated version of the Trans-Pacific Partnership (TPP) Intellectual Property Rights Chapter. The TPP is the world's largest economic trade agreement that will, if it comes into force, encompass more than 40 per cent of the world's GDP. The IP Chapter covers topics from pharmaceuticals, patent registrations and copyright issues to digital rights. Experts say it will affect freedom of information, civil liberties and access to medicines globally. The WikiLeaks release comes ahead of a Chief Negotiators' meeting in Canberra on 19 October 2014, which is followed by what is meant to be a decisive Ministerial meeting in Sydney on 25–27 October.

Despite the wide-ranging effects on the global population, the TPP is currently being negotiated in total secrecy by 12 countries. Few people, even within the negotiating countries' governments, have access to the full text of the draft agreement and the public, who it will affect most, none at all. Large corporations, however, are able to see portions of the text, generating a powerful lobby to effect changes on behalf of these groups and bringing developing country members reduced force, while the public at large gets no say.", :rep => 5, :author_id => 2)
Article.create(:title => "Secret Trans-Pacific Partnership Agreement (TPP) - Investment Chapter", :abstract => "WikiLeaks releases today the \"Investment Chapter\" from the secret negotiations of the TPP (Trans-Pacific Partnership) agreement. Full Press Release: https://wikileaks.org/tpp-investment/press.html", :sources => "https://wikileaks.org/tpp-investment/", :body => "WikiLeaks releases today the \"Investment Chapter\" from the secret negotiations of the TPP (Trans-Pacific Partnership) agreement. The document adds to the previous WikiLeaks publications of the chapters for Intellectual Property Rights (November 2013) and the Environment (January 2014).

The TPP Investment Chapter, published today, is dated 20 January 2015. The document is classified and supposed to be kept secret for four years after the entry into force of the TPP agreement or, if no agreement is reached, for four years from the close of the negotiations.

Julian Assange, WikiLeaks editor said: \"The TPP has developed in secret an unaccountable supranational court for multinationals to sue states. This system is a challenge to parliamentary and judicial sovereignty. Similar tribunals have already been shown to chill the adoption of sane environmental protection, public health and public transport policies.\"

Current TPP negotiation member states are the United States, Japan, Mexico, Canada, Australia, Malaysia, Chile, Singapore, Peru, Vietnam, New Zealand and Brunei. The TPP is the largest economic treaty in history, including countries that represent more than 40 per cent of the world´s GDP.", :rep => 5, :author_id => 3 )
Article.create(:title => "The Big Cheat: Why Teachers Are Going to Prison While Charter School Operators Get Accolades", :abstract => "12 educators who went on trial for 'inflating test scores of children from struggling schools,' 11 were convicted of racketeering, of those who have been sentenced so far (one sentencing has been postponed), eight have been given jail or prison time and three will serve at least seven years. Only those who admitted guilt and waived appeals were spared.", :sources => "Jeff Bryant, http://www.alternet.org/education/big-cheat-why-teachers-are-going-prison-while-charter-school-operators-get-accolades", :body => "No one likes a cheater.

So you’d think plenty of people would be pleased to hear that educators in Atlanta, on trial for cheating on standardized tests, were found guilty of those charges and sentenced “harshly,” according to the New York Times.

As CNN reports, of the 12 educators who went on trial for “inflating test scores of children from struggling schools,” 11 were convicted of racketeering—a crime normally associated with mob bosses—and other lesser crimes. Of those who have been sentenced so far (one sentencing has been postponed), eight have been given jail or prison time and three will serve at least seven years. Only those who admitted guilt and waived appeals were spared.

But even before the sentencing was finalized, there was widespread condemnation of the idea that prison terms were even in consideration. An 'outrage' one commentator called it. 'Racist,'' declared another.

Why the Controversy?

The strongest case for coming down hard on the cheaters came from the presiding judge, who declared the offenses were not “victimless crimes,” because test score altering gave children and parents misleading information about academic achievement. “The sickest thing that’s ever happened in this town,” the judge called the scandal.

But economist Richard Rothstein points out that what happened in Atlanta was, frankly, inevitable. Writing for the Economic Policy Institute blog, he notes,

“Holding educators accountable for student test results makes sense if the tests are reasonable reflections of teacher performance. But if they are not, and if educators are being held accountable for meeting standards that are impossible to achieve, then the only way to meet fanciful goals imposed from above—according to federal law, that all children will make adequate yearly progress towards full proficiency in 2014—is to cheat, using illegal or barely legal devices. It is not surprising that educators do just that.”

The test-enforced 'standards' Rothstein refers to are not mere data points. To the judge, and those who support his ruling, they are not only accurate measures of academic progress but also represent a moral imperative whose transgression is evidence of evil intentions, hence the racketeering charge.

So was this a case of greedy educators being all about the money? It's true the educators and their schools possibly could have seen increases in salaries and bonuses as a result of increases in test scores. What's also possible is that these educators were much more motivated to cheat in order to avoid something bad happening to them or their schools. Because performance assessments of schools and individual teachers are now linked to changes in student test scores, schools that do poorly on the state tests are subject to harsh penalties, including outright closure, while teachers can be fired or required to withstand rigorous supervision.

Regardless of the motives of the perpetrators, what the offending educators did, strictly speaking, was falsify data. And if that is so, then shouldn’t any attempts to manipulate testing data be considered an invasion of the vault? That’s a question that should be asked given another big education story that recently made news headlines.

Another Way to Cheat?

In a recent feature in the New York Times, reporter Kate Taylor reveals how educators at the Success Academy charter school chain in New York City produce high scores by practicing what she calls a “polarizing” form of education. Taylor calls the charter school chain a “testing dynamo,” because of the high scores the schools produce, despite serving “primarily poor, mostly black and Hispanic students,” who so often score poorly on typical standardized tests.

Success Academy’s startlingly high test scores have been the rationale for expanding the chain into “the city’s largest network of charter schools,” with 43 schools. “A proposal by Gov. Andrew M. Cuomo,” Taylor reports, could bring the number of Success schools to 100 —“more schools than Buffalo, the state’s second-largest district.”

But the “success” enjoyed by Success is due, in part, to the chain’s strict pedagogical approach, which includes stringent student discipline practices and precise behavior control in a bootcamp-like school environment.

“Students must sit with hands clasped and eyes following the speaker,” Taylor explains. “For those deemed not trying hard enough, there is ‘effort academy,’ which is part detention, part study hall.”

The schools place an enormous amount of emphasis on frequent assessments of students. Expansive portions of learning time—“up to 90 minutes each day”—are spent preparing for exams. Teachers and students described to Taylor a test-prep “regimen that can sometimes be grueling.”

Current and former teachers told of “students in third grade and above wetting themselves during the practice tests, either because teachers did not allow them to go to the restroom… or because the students themselves felt so much pressure that they did not want to lose time on the test.”

Students who score poorly on the exams are routinely publicly shamed by having their results singled out and displayed in the hallway for other faculty, students and school guests to see.

The charter chain’s founder and director, Eva Moskowitz, defends her schools. In an email to Success Academy employees, as reported by news outlet Capital, Moskowitz claims the Times article 'contains many inaccurate statements and unfair portrayals of our schools.'

Yet reports of chronic humiliation practices at Success Academy are neither isolated nor new.

So This Is Success?

Shortly after the Times story broke, education historian Diane Ravitch found yet another current Success Academy teacher who corroborates much of what Taylor reports. On Ravitch’s personal blog, the teacher, who remained anonymous, describes, “doing test prep for months” even though “some of the kids explode or break down.”

As the Times reporter found, the teacher explains, “Children are assigned a color depending on their test scores, and every classroom posts the names of the children… the goal is to shame the lowest performing students so they try harder to move up into the next level.”

The teacher tells of a “dispiriting and joyless” school environment that subjects any student who struggles to repeat suspensions or to require their parents or guardians to come to school every day until the behavior changes or the student leaves.

In yet another reflection on the Times article, a journalist for Business Insider recalls a comment on the website of a Success Academy charter school. The commenter, who claims to be a parent of a former Success student, said his or her child “developed problems with going to the bathroom at the charter school… My son wet his pants for the first time since he was three years old because the school did not let him go to the bathroom when he asked.”

The parent called the school “strict, cold, and insensitive to the overall needs of the young children.”

Even more evidence of Success Academy’s ritual humiliation comes from Seaton Hall University education professor Daniel Katz. On his personal blog, he recalls a report from the New York Times in 2011 explaining that children who do not fit into the “very narrow mode” Success Academy enforces “find themselves subjected to excessive punishments and ongoing suggestions that they should leave.”

Calling this type of school environment humiliating is an understatement—perhaps as humiliating as the scene in Atlanta of educators in shackles being led from the courtroom. Except in this case, the humiliation is directed at little kids.

What's the Motive?

If every crime has to have a motive, what's the motive for Success Academy to go to such lengths to get the test scores it wants?

Much like the cheating educators in Atlanta, charter schools have powerful incentives to increase test scores. First, charter schools in New York City, and many other places for that matter, want to avoid the harm that can result from low student performance on tests. After all, ardent charter school proponents frequently declare their allegiance to the market-based ideology that schools should be accountable for 'results' and parents should have a 'choice' to leave 'low-performing' schools.' So for any operation adhering to this ideology to underperform on tests—which many charter schools actually do, by the way—would be a prime example of being hoisted on your own petard.

Second, just like with the Atlanta educators, the scent of money is in the air. Charter schools, especially in New York City, are a big business. And no other charter operator in the Big Apple is as big as Success Academy, whose annual revenue doubled last year to $34.6 million.

Moskowitz herself has become infamous for gifting herself a salary of $567,500 while keeping her teaching staff relatively low paid, with fewer benefits than city teachers, and with longer days that can stretch to 11 hours or more. This is a business model that literally runs on keeping the test scores high.

So Who’s the Cheater?

In today’s education landscape, so dominated by the tyranny of testing, charter school operators like Eva Moskowitz have found that falsifying data is not the only way to ensure high scores. You can falsify education practice itself.

As an in-depth report, also from Capital, explains, Success Academy charters operate under the belief that “what's wanted in the city's most troubled neighborhoods is a stiff dose of discipline and parochial-school rigor … Without futzing around with intellectually messy questions about … the opportunity cost of ‘teaching to the test.'

Defenders of Success Academy say the schools are part of a “reform” movement in education, reliant on a three-legged stool of 'moral justice, political will, and test scores.' But equating a statistical data point to moral and political values is not only a dubious proposition, it comes with huge risks.

As Rothstein explains, “Our use of tests as the chief way to measure school and teacher performance has corrupted schools everywhere.”

“The widely lauded Success Academy model,” writes classroom teacher and popular blogger Peter Greene, “is based on the emotional brutalization of children” with a “mission to weed out those students who just can't cut it the SA way.”

Greene contends that the “tunnel-vision focus on The Test” is justified by “an ugly lie” at least as big as the lie the Atlanta judge accuses the cheating educators of committing—“that if poor kids can get the same kind of test scores as rich kids, the doors will open to the same kind of [long term] success.”

Yet despite their test scores, there’s no assurance the children of Success Academy will, in the long term, be any better off than the cheated children in Atlanta. Professor Katz points to an analysis from reporterJuan Gonzalez of the New York Daily News, who found that of the original class of 73 students who enrolled in one Success Academy in 2006, only 32 made it to the last week of school, and “despite 27 of those students sitting for the entrance exams to New York City’s highly selective public high schools, no Success Academy graduate qualified for admission.”

So yes, you can argue Success Academy’s kids are being cheated, too. In exchange for years of humiliation and mindless test prep, in stultifying conditions, without the rich, adventurous learning experiences enjoyed by their more well-to-do peers, they’re being given a chance to join the ranks of the college and career bound that seems no more assured—and could actually be worse—than what they faced to begin with.

Put that way, it does sound like cheating. And no one likes a cheater.", :rep => 4, :author_id => 4)
Article.create(:title => "NEWS & POLITICS
Cop Who Shot and Killed 7-Year-Old Girl While Filming a Reality Show Is a Police Officer Again", :abstract => "Aiyana Stanley-Jones was murdered by officer Joseph Weekley", :sources => "By Cassandra Fairbanks / The Free Thought Project", :body => "Detroit, MI– Officer Joseph Weekley had not been on the force since 2010 when he shot a sleeping child in the head during a botched raid executed on the wrong home.

The raid was being filmed for an episode of The First 48, and many believe the excessive tactics used were employed simply to create drama and excitement for the camera. Unfortunately, a beautiful little girl, Aiyana Stanley-Jones, 7, lost her life because of his reckless and violent actions.

Officer Weekely has now been reinstated to the force, according to Detroit Police Chief James Craig. As part of the department’s integration program, Weekely will return to the department in a non-field position, but the chief has allowed for the possibility for him to eventually go back into the field, stating,

“It’s tragic what happened to Aiyana, it’s tragic. Sometimes, we’re in a high-risk occupation, mistakes happen, and sometimes those mistakes result in tragedies, but we move on from that.”

Weekley was originally charged with felony involuntary manslaughter and misdemeanor careless discharge of a firearm causing death after young Aiyana took a fatal bullet to the head during a botched raid on her home.

The officer has already been on trial twice for this crime, both ending with deadlocked jurors and mistrials. The judge in the second trial shockingly dropped the manslaughter charge due to a motion by the defense. The same motion had been denied by a judge during his first trial.

In January, Prosecutor Kym Worthy dismissed the case against the killer cop.

According to the officer, a fellow cop threw a flash-bang grenade through the window, which temporarily blinded Weekley, who had been first through the door. When the effects of the flash-bang wore off, he realized there was a person on the couch. Weekley aimed his weapon at the couch where the child was sleeping beneath a “Hanna Montana” blanket. He claims her grandmother, Mertilla Jones, smacked his MP5 submachine gun, causing him to pull the trigger and kill Aiyana.

Mertilla Jones disputes this claim and says that she reached for her granddaughter when the grenade came through the window, not for the officer’s gun. Jones asserts she did not make contact with an officer at any point during the assault on her home. Her fingerprints were not found on the weapon.

The family is now suing the city of Detroit, Officers Weekley and Rowe, The Detroit Police Department, and approximately 20 unidentified members of the Special Response Team, alleging a conspiracy to cover up details of the crime.

“Upon Defendants realizing that they had critically injured the seven-year-old girl, they intentionally conspired to cover-up their unlawful acts by providing false and fictitious information to the authorities and to the media regarding the shooting of Aiyana Stanley-Jones, including falsely claiming that the bullet that killed her was fired from inside the lower unit of the duplex rather than from the outside…”

Why a man who admittedly murdered a sleeping child would ever want to stalk the streets with a weapon remains unclear.  Watch out Detroit, there is an armed monster roaming free.", :rep => 5, :author_id => 3)
Article.create(:title => "Police Cadet Quits Academy, Reports Cops After Witnessing Homeless Man Being Beaten By Officers", :abstract => "District Attorney Kari Brandenburg has provided new details in the case of two Albuquerque police officers who are under investigation for brutality after allegedly beating a homeless man on March 20. A police cadet reported the incident and has since resigned; since 2009, this department has been involved in 47 shootings, 32 of which were fatal. ", :sources => "http://www.alternet.org/police-cadet-quits-academy-reports-cops-after-witnessing-homeless-man-being-beaten-officers, http://www.alternet.org/police-cadet-quits-academy-reports-cops-after-witnessing-homeless-man-being-beaten-officers, http://www.alternet.org/police-cadet-quits-academy-reports-cops-after-witnessing-homeless-man-being-beaten-officers", :body => "Few details are known about what exactly transpired, and Police Chief Gorden Eden told KOAT that it is partly because he’s concerned for the safety of the cadet who reported the incident. Mayor Richard Berry says the fact that it was an employee shows there is a level of comfort and internal accountability within the department, as someone felt safe enough to come forward. However, the department is afraid for anyone to know the identity of the cadet – possibly implying that they do not even trust their own officers.

The department has not named the officers involved, provided any details on the beating or condition of the victim, or even reported where exactly the incident took place.

The only information shared by the chief came from a YouTube video posted to the department’s Facebook page. He stated that an internal affairs investigation was immediately launched and the Department of Justice, FBI, and US Attorney’s Office were also notified. The case is now being investigated by the state police. Since 2009, the troubled department has been involved in 47 shootings, 32 of which were fatal.  Chief Eden has stated that these numbers reflect a “systemic failure in our ability to track employee misconduct.”

In April of last year, the department was accused of using excessive force by the Justice Department after the frightening murder of the homeless James Boyd when he was approached for “illegally camping.”  Boyd was shot by an officer who had discussed his plans to shoot him in the penis, hours prior to his death.  Their own police chief openly admitted that he is stuck with officers who should not be on the force.

“Based on our investigation, we have reasonable cause to believe that APD engages in a pattern or practice of use of excessive force, including deadly force, in violation of the Fourth Amendment and Section 14141. Our investigation included a comprehensive review of APD’s operations and the City’s oversight systems. We have determined that structural and systemic deficiencies—including insufficient oversight, inadequate training, and ineffective policies— contribute to the use of unreasonable force,” the Department of Justice wrote of the department.

While the APD may have lost a desperately needed actual “good cop”, the violent duo accused of the assault are currently on paid leave.", :rep => 2, :author_id => 1)
Article.create(:title => "Better battery imaging paves way for renewable energy future", :abstract => "n a move that could improve the energy storage of everything from portable electronics to electric microgrids, researchers have developed a novel X-ray imaging technique to visualize and study the electrochemical reactions in lithium-ion rechargeable batteries containing a new type of material, iron fluoride.", :sources => "http://www.sciencedaily.com/releases/2015/04/150420182411.htm, University of Wisconsin-Madison, Journal Reference:
Linsen Li, Yu-chen Karen Chen-Wiegart, Jiajun Wang, Peng Gao, Qi Ding, Young-Sang Yu, Feng Wang, Jordi Cabana, Jun Wang, Song Jin. Visualization of electrochemically driven solid-state phase transformations using operando hard X-ray spectro-imaging. Nature Communications, 2015 DOI: 10.1038/ncomms7883, University of Wisconsin-Madison. 'Better battery imaging paves way for renewable energy future.'' ScienceDaily. ScienceDaily, 20 April 2015. <www.sciencedaily.com/releases/2015/04/150420182411.htm>.", :body => "In a move that could improve the energy storage of everything from portable electronics to electric microgrids, University of Wisconsin-Madison and Brookhaven National Laboratory researchers have developed a novel X-ray imaging technique to visualize and study the electrochemical reactions in lithium-ion rechargeable batteries containing a new type of material, iron fluoride.
'Iron fluoride has the potential to triple the amount of energy a conventional lithium-ion battery can store,'' says Song Jin, a UW-Madison professor of chemistry and Wisconsin Energy Institute affiliate. 'However, we have yet to tap its true potential.''
Graduate student Linsen Li worked with Jin and other collaborators to perform experiments with a state-of-the-art transmission X-ray microscope at the National Synchrotron Light Source at Brookhaven. There, they collected chemical maps from actual coin cell batteries filled with iron fluoride during battery cycling to determine how well they perform. The results are published today in the journal Nature Communications.
'In the past, we weren't able to truly understand what is happening to iron fluoride during battery reactions because other battery components were getting in the way of getting a precise image,' says Li.
By accounting for the background signals that would otherwise confuse the image, Li was able to accurately visualize and measure, at the nanoscale, the chemical changes iron fluoride undergoes to store and discharge energy.
Thus far, using iron fluoride in rechargeable lithium ion batteries has presented scientists with two challenges. The first is that it doesn't recharge very well in its current form.
'This would be like your smart phone only charging half as much the first time, and even less thereafter,' says Li. 'Consumers would rather have a battery that charges consistently through hundreds of charges.'
By examining iron fluoride transformation in batteries at the nanoscale, Jin and Li's new X-ray imaging method pinpoints each individual reaction to understand why capacity decay may be occurring.
'In analyzing the X-ray data on this level, we were able to track the electrochemical reactions with far more accuracy than previous methods, and determined that iron fluoride performs better when it has a porous microstructure,' says Li.
The second challenge is that iron fluoride battery materials don't discharge as much energy as they take in, reducing energy efficiency. The current study yielded some preliminary insights into this problem and Jin and Li plan to tackle this challenge in future experiments.
Some implications of this research are obvious -- like using portable electronic devices for longer before charging -- but Jin also foresees a bigger and broader range of applications.
'If we can maximize the cycling performance and efficiency of these low-cost and abundant iron fluoride lithium ion battery materials, we could advance large-scale renewable energy storage technologies for electric cars and microgrids,' he says.
Jin also believes that the novel X-ray imaging technique will facilitate the studies of other technologically important solid-state transformations and help to improve processes such as preparation of inorganic ceramics and thin-film solar cells.
The experiments were performed with the help of Yu-chen Karen Chen-Wiegart, Feng Wang, Jun Wang and their co-workers at Beamline X8C, National Synchrotron Light Source, Brookhaven National Laboratory, and supported by the U.S. Department of Energy Basic Energy Sciences and a seed grant from the Wisconsin Energy Institute.
The synthesis of the battery materials in Jin's lab was supported by National Science Foundation Division of Materials Research.", :rep => 5, :author_id => 2)
Article.create(:title => "Our Love Of Puppy Dog Eyes Explained By Science", :abstract => "Researchers found a spike in oxytocin occurs in both humans and dogs when they gaze into each other's eyes", :sources => "Newsy / Powered by NewsLook.com", :body => "See Video", :rep => 1, :author_id => 4)
Article.create(:title => "Getting a better grasp of primate grip", :abstract => "In a new study, a research team found that even the oldest known human ancestors may have had precision grip capabilities comparable to modern humans. This includes Australopithecus afarensis, which appears in the fossil record a million years before the first evidence of stone tools.", :sources => "http://www.sciencedaily.com/releases/2015/04/150420144402.htm, Yale University, Journal Reference:
T. Feix, T. L. Kivell, E. Pouydebat, A. M. Dollar. Estimating thumb-index finger precision grip and manipulation potential in extant and fossil primates. Journal of The Royal Society Interface, 2015; 12 (106): 20150176 DOI: 10.1098/rsif.2015.0176, The above story is based on materials provided by Yale University. The original article was written by Jim Shelton. Note: Materials may be edited for content and length.", :body => "Scientists are coming to grips with the superior grasping ability of humans and other primates throughout history.
In a new study, a research team led by Yale University found that even the oldest known human ancestors may have had precision grip capabilities comparable to modern humans. This includes Australopithecus afarensis, which appears in the fossil record a million years before the first evidence of stone tools.
Yale robotics engineers Thomas Feix and Aaron Dollar collaborated on the research with anthropologist Tracy Kivell of the University of Kent and the Max Planck Institute for Human Anthropology, and primatologist Emmanuelle Pouydebat of the French National Centre for Scientific Research. Their findings appear in the Journal of the Royal Society Interface.
Using measurements of the digits' segments, the team created a kinematic model of the thumb and index finger of the skeletons of living primates and fossil remains of human ancestors. It is the first such model of digit movement during precision grasping and manipulation in a broad sample of humans, non-human primates, and fossil hominins.
'The model reveals that a long thumb or great joint mobility alone does not necessarily yield good precision manipulation,' said Feix, who is corresponding author of the study. 'Compared to living primates, the human hand has the largest manipulation potential, in particular for small objects.'
Past studies of precision grasping in primates have focused on digit posture -- contact between the hand and the object -- or the length of the thumb relative to the fingers. The new study introduces a novel method for analyzing the interaction between the thumb and index finger, which is the foundation of stable grasping of small objects.
Manual dexterity is traditionally viewed as a key adaptation that separated the earliest primates from other early mammals. It is thought that such abilities evolved in response to no longer needing hands for locomotion, as well as the mechanical demands of using tools.
Yet there remains debate about the gripping capabilities of early fossil hominins, especially regarding the use of tools. The new study may shed light on some of those issues. For instance, the study suggests that the early human species Australopithecus afarensis may have had greater dexterity than what was required for cutting with a stone, including manipulative and tool-related behaviors that may not have been preserved in the archaeological record.", :rep => 5, :author_id => 3)
Article.create(:title => "Repeated marine predator evolution tracks changes in ancient and Anthropocene oceans", :abstract => "Scientists synthesized decades of scientific discoveries to illuminate the common and unique patterns driving the extraordinary transitions that whales, dolphins, seals and other species underwent as they moved from land to sea. Drawing on recent breakthroughs in diverse fields such as paleontology, molecular biology and conservation ecology, their findings offer a comprehensive look at how life in the ocean has responded to environmental change from the Triassic to the Anthropocene.", :sources => "http://www.sciencedaily.com/releases/2015/04/150416145547.htm, Smithsonian, Journal Reference:
Neil P. Kelley, Nicholas D. Pyenson. Evolutionary innovation and ecology in marine tetrapods from the Triassic to the Anthropocene. Science, 2015 DOI: 10.1126/science.aaa3716, Story Source:
The above story is based on materials provided by Smithsonian. Note: Materials may be edited for content and length.", :body => "For more than 250 million years, four-limbed land animals known as tetrapods have repeatedly conquered the Earth's oceans. These creatures--such as plesiosaurs, penguins and sea turtles--descended from separate groups of terrestrial vertebrates that convergently evolved to thrive in aquatic environments.
In a new scientific review, a team of Smithsonian scientists synthesized decades of scientific discoveries to illuminate the common and unique patterns driving the extraordinary transitions that whales, dolphins, seals and other species underwent as they moved from land to sea. Drawing on recent breakthroughs in diverse fields such as paleontology, molecular biology and conservation ecology, their findings offer a comprehensive look at how life in the ocean has responded to environmental change over time. The paper also highlights how evolutionary history informs an understanding of the impact of human activities on marine species today. More information is available in the April 17 issue of Science.
Marine tetrapods represent a diverse group of living and extinct species of mammals, reptiles, amphibians and birds that all play--or played--a critical role as large ocean predators in marine ecosystems. The repeated transitions between land and sea have driven innovation, convergence and diversification against a backdrop of changing marine ecosystems and mass extinctions dating back to the Triassic period. In this way, they provide ideal models for testing hypotheses about the evolution of species over long periods of time. Modern species of marine tetrapods now face a suite of human-driven impacts to their environment, including climate change, habitat degradation, ship collisions and underwater noise.
'We know from the fossil record that previous times of profound change in the oceans were important turning points in the evolutionary history of marine species,' said Neil Kelley, a Peter Buck post-doctoral researcher in the National Museum of Natural History's department of paleobiology and lead author in the study. 'Todays oceans continue to change, largely from human activities. This paper provides the evolutionary context for understanding how living species of marine predators will evolve and adapt to life in the Anthropocene.'
Recent investigations in the fossil record have provided new insight into the evolution of traits that allowed marine tetrapods to thrive in the sea. In some cases, similar anatomy evolved among lineages that adapted to marine lifestyles. For example, modern dolphins and extinct marine reptiles called ichthyosaurs descended from distinct terrestrial species, but independently converged on an extremely similar fish-like body plan although they were separated in time by more than 50 million years. The repeated transformation of legs adapted for walking on land into fins is another classic example of convergent evolution. Species ranging from seals to mosasaurs independently developed streamlined forelimbs as they transitioned from living on land to the ocean, allowing them to move quickly and efficiently in the water. This transformation may have been achieved by parallel changes at the genome level.
'Land to sea transitions have happened dozens of times among reptiles, mammals and birds, across major mass extinctions,' said Nicholas Pyenson, the museum's curator of fossil marine mammals. 'You often get similar looking results but convergence is more than skin deep. It can be seen on a broad range of scales, from molecules to food webs, over hundreds of millions of years.'
In the case of deep divers such as beaked whales and seals, these species have independently evolved to have positively charged oxygen-binding proteins called myoglobin in their muscles, allowing them to survive underwater for long periods of time. Scientists also have found identical genetic sequences in different marine species, such as whales, seals and sea cows. Whether these invisible molecular similarities account for larger-scale visible patterns of convergent evolution, or whether convergent anatomy follows different genetic pathways in different groups, remains an important open question to be tackled as genomic sequences become available for more species.
Not all adaptations observed in marine tetrapods can be attributed to convergent evolution. For instance, as baleen whales evolved to live underwater, they developed a unique filter-feeding system that depends on hair-like plates instead of teeth. In contrast, toothed whales evolved to catch and feed on prey by emitting calls and using echolocation, a kind of sonar, to process the echoes from these noises and detect objects in the sea.
Kelley and Pyenson synthesized research from existing studies and referenced the Smithsonians paleobiology collections during the course of their research. They intend that this comprehensive review will encourage future collaboration between researchers across scientific fields and lead to new insights about evolutionary biology, paleontology and marine conservation.", :rep => 5, :author_id => 3)
Article.create(:title => "Intense magnetic field close to supermassive black hole", :abstract => "Astronomers have revealed an extremely powerful magnetic field, beyond anything previously detected in the core of a galaxy, very close to the event horizon of a supermassive black hole.", :sources => "European Southern Observatory, http://www.sciencedaily.com/releases/2015/04/150416141026.htm, Story Source:
The above story is based on materials provided by European Southern Observatory. Note: Materials may be edited for content and length., European Southern Observatory. 'Intense magnetic field close to supermassive black hole.' ScienceDaily. ScienceDaily, 16 April 2015. <www.sciencedaily.com/releases/2015/04/150416141026.htm>.", :body => "The Atacama Large Millimeter/submillimeter Array (ALMA) has revealed an extremely powerful magnetic field, beyond anything previously detected in the core of a galaxy, very close to the event horizon of a supermassive black hole.
This new observation helps astronomers to understand the structure and formation of these massive inhabitants of the centers of galaxies, and the twin high-speed jets of plasma they frequently eject from their poles. The results appear in the 17 April 2015 issue of the journal Science.
Supermassive black holes, often with masses billions of times that of the Sun, are located at the heart of almost all galaxies in the Universe. These black holes can accrete huge amounts of matter in the form of a surrounding disc. While most of this matter is fed into the black hole, some can escape moments before capture and be flung out into space at close to the speed of light as part of a jet of plasma. How this happens is not well understood, although it is thought that strong magnetic fields, acting very close to the event horizon, play a crucial part in this process, helping the matter to escape from the gaping jaws of darkness.
Up to now, only weak magnetic fields far from black holes -- several light-years away -- had been probed. In this study, however, astronomers from Chalmers University of Technology and Onsala Space Observatory in Sweden used ALMA to detect signals directly related to a strong magnetic field very close to the event horizon of the supermassive black hole in a distant galaxy named PKS 1830-211. This magnetic field is located precisely at the place where matter is suddenly boosted away from the black hole in the form of a jet.
The team measured the strength of the magnetic field by studying the way in which light was polarized as it moved away from the black hole.
'Polarization is an important property of light and is much used in daily life, for example in sun glasses or 3D glasses at the cinema,' says Ivan Marti-Vidal, lead author of this work. 'When produced naturally, polarization can be used to measure magnetic fields, since light changes its polarization when it travels through a magnetized medium. In this case, the light that we detected with ALMA had been traveling through material very close to the black hole, a place full of highly magnetized plasma.'
The astronomers applied a new analysis technique that they had developed to the ALMA data and found that the direction of polarization of the radiation coming from the center of PKS 1830-211 had rotated. These are the shortest wavelengths ever used in this kind of study, which allow the regions very close to the central black hole to be probed.
'We have found clear signals of polarization rotation that are hundreds of times higher than the highest ever found in the Universe,' says Sebastien Muller, co-author of the paper. 'Our discovery is a giant leap in terms of observing frequency, thanks to the use of ALMA, and in terms of distance to the black hole where the magnetic field has been probed -- of the order of only a few light-days from the event horizon. These results, and future studies, will help us understand what is really going on in the immediate vicinity of supermassive black holes.", :rep => 5, :author_id => 4)
Article.create(:title => "Pipelines blow up and people die", :abstract => "After a series of deadly accidents, Congress created an office to oversee the nation’s oil and gas pipelines. A decade later, it’s become the can’t-do agency.", :sources => "http://www.politico.com/story/2015/04/the-little-pipeline-agency-that-couldnt-117147.html?hp=t1_r", :body => "
On June 10, 1999, a few days after his high school graduation, Liam Wood unexpectedly got an afternoon off work and decided to go fly-fishing on a creek near his hometown of Bellingham, Washington. About 100 miles away, operators missed the signs of a pressure spike in the 16-inch gasoline pipeline that crossed the stream in Whatcom Falls Park.

The pipe ruptured at a point where, several years before, a backhoe had accidentally struck and weakened the 50-year-old iron. Hundreds of thousands of gallons of gasoline began to spew into the creek near where Liam stood, staining the water pink.

It took an hour for control room computers to register an alert. Police began to evacuate the park, but Liam was already dead. Overcome by fumes, the 18-year-old had fallen unconscious into the water and drowned.

Then two 10-year-old boys playing in the park flicked a lighter they’d been using to set off fireworks, igniting the gasoline. The fireball set dozens of acres ablaze in a towering black cloud that could be seen in Vancouver, more than 50 miles away. The two boys died the next day, succumbing to burns over more than 80 percent of their bodies.

The ensuing public outrage revealed gaping holes in pipeline safety regulations. The pipeline company had failed — but clearly, so had federal authorities who were supposed to be keeping watch. At the time of the Bellingham disaster, pipeline operators were not required to inspect the inside of their pipes or install valves that would automatically shut after a rupture. Government auditors later found that the federal agency in charge of pipeline safety was a dismal failure at implementing more stringent regulations, in part because it deemed the rules \“too costly for the pipeline industry compared with the expected benefits.\”

Six months after the blast, the head of the National Transportation Safety Board, the independent agency investigating the Bellingham explosion, strode into a meeting of pipeline executives to unleash a brutal critique of the federal regulators and of the industry he believed shared the blame for obstructing reform.

\“There is nowhere today the sense that the Office of Pipeline Safety is in charge,\” Jim Hall said then, \“or that its regulations, its inspections, its assets, its staffing and its spirit are adequate to the task.\”

Bellingham was supposed to change that. But more than 15 years later, Hall says he sees little evidence of meaningful improvements. \“Unfortunately,\” he told POLITICO, \“I think I would give the same speech today.\”

The story of what happened in those 15 years — or rather, what didn’t happen — is in large part the story of the Pipeline and Hazardous Materials Safety Administration, an obscure agency that was created to oversee the nation’s sprawling network of oil and gas pipelines.

Oil and gas companies like to assure the public that pipelines are a safer way to ship their products than railroads or trucks. But government data makes clear there is hardly reason to celebrate. Last year, more than 700 pipeline failures killed 19 people, injured 97 and caused more than $300 million in damage. Two of the past five years have been the worst for combined pipeline-related deaths and injuries since 2000.

To understand the failure revealed by these numbers, POLITICO talked to more than 15 former and current federal pipeline officials and advisers, as well as dozens of safety experts, engineers and state regulators. We reviewed more than a decade of government data on fatalities, injuries, property damage, incident locations, inspections, damages and penalties.

The picture that emerges is of an agency that lacks the manpower to inspect the nation’s 2.6 million miles of oil and gas lines, that grants the industry it regulates significant power to influence the rule-making process, and that has stubbornly failed to take a more aggressive regulatory role, even when ordered by Congress to do so.

This is a particularly bad time for a front-line safety agency to take a backseat.

The current boom in fossil fuel production has created intense pressure for massive new pipelines like Keystone XL. Many of the pipes already in the ground are more than half a century old. Tens of thousands of miles of pipeline go completely unregulated by federal officials, who have abandoned the increasingly high-pressure lines to the states.

Meanwhile, fatal incidents continue; a gas explosion in Alabama killed one man in January, and PHMSA reported 10 injuries in the three months it took to report this story.

A senior Capitol Hill aide who has long tracked the agency, speaking on condition of anonymity, lamented PHMSA’s deeply rooted “culture of can’t.\”

\“PHMSA has always said, ‘We can’t,’\” the aide said. \“‘We can’t get it through [the White House budget office],’ ‘We can’t get the money,’ ‘We can’t get the resources,’ ‘We can’t submit what we really want,’ ‘We can’t regulate this,’ ‘We can’t get enough inspectors to do this.’ … PHMSA acts like it’s been beaten down for decades. Every time you try to offer a hand up, it almost retreats.\”

****

About a year after Bellingham came a natural gas explosion in New Mexico that killed 12 people. Members of Congress were rushing to make up for years of inattention, but the families of those killed in Bellingham didn’t hesitate to criticize proposed laws they felt were \“watered down by those who pay homage to the powerful oil and gas lobbyists.\”

One of those family members was Bruce Brabec, whose stepson was Liam Wood. Brabec would soon join a private watchdog group as way to deal with his grief. \“I didn’t want to just be angry,\” said Brabec, whose short-cropped white beard gives him the look of a college professor. \“I wanted to be effective. I wanted to help make changes.\”

It was 2002 before Congress approved legislation that required companies to create risk-management analyses for pipelines that run through densely populated areas and perform more frequent inspections. That was enough to win the wary support of safety advocates.

Not up to the job
The Pipeline and Hazardous Materials Safety Administration was created a decade ago as part of Congressional reforms to stiffen safety regulations of the nation’s 2.6 million miles of oil and gas pipelines. But the agency has struggled to make a significant dent in the number of pipeline failures. Critics say the agency gives too much power to the pipeline industry to write regulations. PHMSA, which has an annual pipeline safety budget of $145.5 million, lacks the manpower to enforce the rules and the willpower to write stronger ones, critics also say.

The creation of PHMSA, an arm of the Department of Transportation, didn’t come for another two years, the result of a bureaucratic reorganization more than a burning desire to bring pipeline companies to heel. Indeed, the new pipeline safety agency inherited many of its predecessor’s flaws — weaknesses entrenched in part by a style that was \“a lot more collaborative than traditional rule making,\” as one former safety official described it.

PHMSA’s regulations tend to be \“a bit open-ended\” as opposed to \“a prescriptive one-size-fits-all,\” said Eben Wyman, a former Transportation Department official who is now a lobbyist representing the plastic pipe industry.


The post-Bellingham reforms give operators latitude to write their own safety plans overseen by PHMSA, which makes it harder for regulators to catch violations. Safety advocates worry that approach is tantamount to self-regulation. But PHMSA and its defenders say that no two pipes are the same and that regulators couldn’t monitor millions of miles of technically complex line without relying on the companies.

A PHMSA official who declined to speak on the record with POLITICO compared the agency to a traffic cop. PHMSA, the official said, \“is not responsible for individuals speeding,\” but it does have the \“responsibility to enforce the law and pull them over to protect the public.\”

But the rules PHMSA enforces get shaped by the pipeline industry — as if lead-footed drivers helped to set highway speed limits.

All rules made by the agency undergo \“peer review\” by two advisory committees, one for hazardous liquids and one for gas. By law, the 15-member committees — five each from industry, government and the public — have the power to vote on proposed regulations and policy moves. In theory, there is balance, but in practice, industry has an advantage. The committees’ current rosters are missing seven members in total on the government and public sides, making it difficult to stop a move backed by pipeline companies. (PHMSA told POLITICO that it is working on getting the rosters back in balance.)

\“With PHMSA, there’s only one wind, and it blows from the industry,\” said Paul Blackburn, a consultant who works primarily with environmentalists and landowners.

Advisory committee meetings are largely friendly affairs, a review of thousands of pages of transcripts shows, almost wholly devoid of resistance to industry-driven projects that craft voluntary standards for PHMSA. One high-profile standard that PHMSA and industry plan to tout at a hearing on April 22 covers \“safety management systems\” that are modeled on practices used for decades in the nuclear and aviation industries. But they are voluntary, like so many of PHMSA’s standards.

\“From the get-go, the regulations get watered down,\” said Randy Knepper, a top pipeline safety official in New Hampshire. \“There’s not a lot of teeth behind them.\”

PHMSA’s chief pipeline safety official, Jeffrey Wiese, acknowledged at a 2011 meeting of advisers that the agency has trouble determining “who really speaks for the public,\” dismissing \“advocacy groups out there with a hard-bent agenda.\”

Explosions, leaks and spills
There’s more than one leak, failure or rupture involving an oil or gas pipeline every day in the United States. The incidents are concentrated in the oil-patch states of Texas, Oklahoma and Louisiana and a cluster in the North Dakota Bakken formation. But pipelines traverse every state. Hazardous liquid spills are sized by the barrel (each barrel is 42 gallons) and gas leaks are measured by cubic feet.

(Click to enlarge)
\“[T]ruth be told, very little [of the] public is even interested or knows\” about pipelines, Wiese said. \“It’s the ones who were near a failure, and their view is skewed.\”

Stacey Gerard, a 20-year PHMSA veteran who retired as its chief safety officer, said public members of the advisory committees \“are not getting paid to do the research and reading\” that might empower them to play a more vocal role. \“Industry is going to be more dominant in the committee discussions because they’re usually more prepared and better armed.\”

The most powerful counterweight to the pipeline industry’s sway over its regulators comes, not surprisingly, from Bellingham. Twelve years ago, former environmental educator Carl Weimer created the nonprofit Pipeline Safety Trust to keep an eye on pipeline companies and their regulators in Washington. The judge who awarded $4 million in criminal penalties to the group likened it to \“Bambi taking on Godzilla.\”

Bambi has learned how to roar in its own way over the years. Weimer sits on one of PHMSA’s advisory panels and is a frequent witness at congressional pipeline hearings. He recalls sprinting to a Capitol Hill Starbucks in 2006 to sketch out legislative language at the request of the late Sen. Frank Lautenberg (D-N.J.) that ultimately made it into that year’s pipeline safety bill.

But Weimer’s influence has not sparked the kind of formal resistance that might stop a weak regulation. During his eight years on a PHMSA advisory committee, he could not remember any formal opposition materializing to a proposed rule. A PHMSA official countered that \“tussling\” among advisers does happen but downplayed its importance, telling POLITICO that \“we consider their input, but are not bound by their input.\”

PHMSA’s longest-serving chief, Cynthia Quarterman, said, in an interview with POLITICO, she was \“concerned\” about the advisory committee structure when she was appointed in 2009 by President Barack Obama. But Quarterman, a former industry lawyer who led the agency until October, came around to the concept \“because, if you could get them to agree across the board that what they’re doing makes sense, it makes a better case going forward.", :rep => 4, :author_id => 1)
end

def make_tags
	Tag.create(:name => "CharterSchools")
	Tag.create(:name => "TPP")
	Tag.create(:name => "WikiLeaks")
	Tag.create(:name => "Occupy")
	Tag.create(:name => "AllDayAllWeek")
	Tag.create(:name => "99percent")
	Tag.create(:name => "1percent")
	Tag.create(:name => "Egypt")
	Tag.create(:name => "ArabSpring")
	Tag.create(:name => "Energy")
	Tag.create(:name => "Science")
	Tag.create(:name => "Astronomy")
	Tag.create(:name => "Racism")
	Tag.create(:name => "Detroit")
	Tag.create(:name => "Tragedy")
	Tag.create(:name => "PoliceThePolice")
	Tag.create(:name => "Battery")
	Tag.create(:name => "Nanoparticles")
	Tag.create(:name => "RenewableEnergy")
	Tag.create(:name => "Puppy")
	Tag.create(:name => "Research")
	Tag.create(:name => "LithiumIon")
	Tag.create(:name => "Oxytocin")
	Tag.create(:name => "Yale")
	Tag.create(:name => "Harvard")
	Tag.create(:name => "ColumbiaUniversity")
	Tag.create(:name => "ElectricalEngineering")
	Tag.create(:name => "Capacitor")
	Tag.create(:name => "Lithium")
	Tag.create(:name => "EV")
	Tag.create(:name => "GlobalWarming")
	Tag.create(:name => "ClimateChange")
	Tag.create(:name => "Ecology")
	Tag.create(:name => "Biology")
	Tag.create(:name => "Dolphins")
	Tag.create(:name => "MarineBio")
	Tag.create(:name => "Anthropomorphism")
	Tag.create(:name => "Cetaceans")
	Tag.create(:name => "Transgender")
	Tag.create(:name => "LGBTQ")
	Tag.create(:name => "HumanRights")
	Tag.create(:name => "Orientalism")
	Tag.create(:name => "EdSaid")
	Tag.create(:name => "SpaceTelescope")
	Tag.create(:name => "Spitzer")
	Tag.create(:name => "Obama")
	Tag.create(:name => "AffordableHealthcareAct")
	Tag.create(:name => "HolographicUniverse")
	Tag.create(:name => "BlackHole")
	Tag.create(:name => "Supernova")
	Tag.create(:name => "NeilDegrasseTyson")
	Tag.create(:name => "Saganism")
	Tag.create(:name => "Shulginism")
	Tag.create(:name => "Marijuana")
	Tag.create(:name => "Legalization")
	Tag.create(:name => "WarOnDrugs")
	Tag.create(:name => "NSA")
	Tag.create(:name => "BlackOps")
	Tag.create(:name => "CIA")
	Tag.create(:name => "Hashtag")
	Tag.create(:name => "ETSY")
	Tag.create(:name => "IPO")
	Tag.create(:name => "WallSt")
	Tag.create(:name => "NoFrackingWay")
	Tag.create(:name => "Fracking")
	Tag.create(:name => "Pipeline")
	Tag.create(:name => "GMO")
	Tag.create(:name => "BigOil")
	Tag.create(:name => "MoneyInPolitics")
	Tag.create(:name => "Lobbying")
	Tag.create(:name => "Beltway")
	Tag.create(:name => "PorkBarrel")
	Tag.create(:name => "Education")
	Tag.create(:name => "Teachers")
	Tag.create(:name => "Children")
	Tag.create(:name => "PublicSchools")
	Tag.create(:name => "Primates")

end

def make_comments
	Comment.create(:body => "Dude, sick!", :user_id => 3, :article_id => 12, :rep => 3)
	Comment.create(:body => "NYPD: it's crucial that human rights be respected. Free speech is protected by the constitution, as well as the right to public assembly. Police, you are the 99% too!", :user_id => 2, :article_id => 1, :rep => 5)
	Comment.create(:body => "I disagree with the previous user's comment, those occupiers should occupy jobs instead!", :user_id => 1, :article_id => 1, :rep => -4)
	Comment.create(:body => "Scarcity of fairly paid jobs for college gradutates with rising student debt is one of the reasons occupy started. It's not like you can go to the supermarket and just take a job off the shelf on aisle 11 bro.", :user_id => 1, :article_id => 1, :rep => -4)
	Comment.create(:body => "Occupy Everywhere!", :user_id => 3, :article_id => 2, :rep => 3)
	Comment.create(:body => "Amazing how technology makes nonviolent revolution more possible than ever", :user_id => 1, :article_id => 2, :rep => 3)
	Comment.create(:body => "TPP is being created in secret!!", :user_id => 3, :article_id => 3, :rep => 3)
	Comment.create(:body => "How can multinationals legally create secret courts?", :user_id => 4, :article_id => 3, :rep => 3)
	Comment.create(:body => "We have to stop the TPP", :user_id => 2, :article_id => 3, :rep => 3)
	Comment.create(:body => "Can this be real?", :user_id => 4, :article_id => 4, :rep => 3)
	Comment.create(:body => "It's real, follow the cited sources.", :user_id => 2, :article_id => 4, :rep => 3)
	Comment.create(:body => "The TPP is being created without any knoweledge or consent of the public.", :user_id => 1, :article_id => 4, :rep => 3)
	Comment.create(:body => "How can multinationals legally create secret courts?", :user_id => 3, :article_id => 4, :rep => 3)
	Comment.create(:body => "We have to stop the TPP", :user_id => 3, :article_id => 4, :rep => 3)
	Comment.create(:body => "This is horrible! I can't believe charter schools are getting away with this!", :user_id => 3, :article_id => 5, :rep => 3)
	Comment.create(:body => "It's really unfortunate, especially as more and more public schools are closing.", :user_id => 2, :article_id => 5, :rep => 3)
	Comment.create(:body => "I really like this column for always posting locally relevant news that features various perspectives.", :user_id => 1, :article_id => 5, :rep => 3)
	Comment.create(:body => "Unbelievable! This guy shouldn't be allowed to be a cop anymore!", :user_id => 1, :article_id => 6, :rep => 3)
	Comment.create(:body => "Smh. The callousness of the police chief is sadly representative of the attitudes of police forces everywhere. 'We shoot people, oh well, deal with it' is basically what they think.", :user_id => 1, :article_id => 6, :rep => 3)
	Comment.create(:body => "I can't believe this happened while they were filming a reality tv show. wtf", :user_id => 3, :article_id => 6, :rep => 3)
	Comment.create(:body => "But what about all of the times police get shot at? Don't they have a reason to be trigger happy?", :user_id => 1, :article_id => 6, :rep => 1)
	Comment.create(:body => "Not if they are adequately trained. This officer clearly failed to accurately assess the situation, and murdered an unarmed child - with impunity no less. It isn't merely the difficulty of the position officers find themselves in, it's the total lack of accountability and nonchalant attitude towards the disproportionate power they yield.", :user_id => 2, :article_id => 6, :rep => 5)
	Comment.create(:body => "This article has several problems. For starters it isn't specific enough. Also there is a lot of missing information. Please post more fact based reports.", :user_id => 2, :article_id => 7, :rep => 3)
	Comment.create(:body => "It does name the police department though, which has a shockingly bad track record.", :user_id => 4, :article_id => 7, :rep => 3)
	Comment.create(:body => "Police brutality and aggression are so ubiquitous. We need more psychological and mental health evaluations of these professionals. They are a danger to the very public they are sworn to protect!", :user_id => 3, :article_id => 7, :rep => 3)
	Comment.create(:body => "SOME are, that's true, but my cousin is a cop and he's a really good guy, honest.", :user_id => 1, :article_id => 7, :rep => 3)
	Comment.create(:body => "This is a really exciting development. Battery research is a critical link to a sustainable energy future.", :user_id => 5, :article_id => 8, :rep => 3)
	Comment.create(:body => "This reminds me of the research being done at the Kaner lab at UCLA with graphene supercapacitators - really exciting stuff!", :user_id => 2, :article_id => 8, :rep => 5)
	Comment.create(:body => "Wait, hasn't graphene been used as a coating for anodes and cathodes in batteries for some time now?", :user_id => 4, :article_id => 8, :rep => 5)
	Comment.create(:body => "Yeah but the Kaner lab is working on figuring out how to use it as the energy storage medium rather than just a coating for the terminals.", :user_id => 2, :article_id => 8, :rep => 5)
	Comment.create(:body => "Dude, sick bro. I can't wait for my flying car.", :user_id => 3, :article_id => 8, :rep => 1)
	Comment.create(:body => "Awww look at the cute puppy!!!", :user_id => 1, :article_id => 9, :rep => 3)
	Comment.create(:body => "It's amazing to think of all the biochemistry happening in our bodies at any given moment. Even just the physical contact from lightwaves bouncing off our eyes is a sufficient packet of information to trigger such an elaborate response in the biochemical software of our bodies.", :user_id => 2, :article_id => 9, :rep => 5)
	Comment.create(:body => "Wow, that was really deep. Yeah oxytocin is insane", :user_id => 3, :article_id => 9, :rep => 5)
	Comment.create(:body => "Proof that puppies are good for your health!", :user_id => 4, :article_id => 9, :rep => 5)
	Comment.create(:body => "I'm amazed at how much we continue to learn from our primate cousins", :user_id => 4, :article_id => 10, :rep => 5)
	Comment.create(:body => "This was a very interesting read, particularly the part about human beings having the most dexterity based on the calculations of their novel kinematic model.", :user_id => 2, :article_id => 10, :rep => 5)
	Comment.create(:body => "I don't understand how there are still people that doubt evolution.", :user_id => 1, :article_id => 10, :rep => 5)
	Comment.create(:body => "This is exactly the kind of interdisciplinary scientific research that needs to happen, and fortunately is happening more and more.", :user_id => 1, :article_id => 11, :rep => 5)
	Comment.create(:body => "I love this article. Great insight into how evolution actually works as well. I wish they discussed the cetacean brain a little bit more - the cetacean brain is significantly more evolved than the human brain and it feels like no one is talking about this!", :user_id => 2, :article_id => 11, :rep => 5)
	Comment.create(:body => "It's true, dolphins and killer whales have an entire additional cortex that humans don't have. It makes you wonder how/why that evolved, and whether they use it for cognition or just motor function.", :user_id => 2, :article_id => 11, :rep => 5)
	Comment.create(:body => "Well, I wouldn't call it 'just motor function,' I mean, imagine what needs to happen in the brain of a dolphin in order to use echo location, and also have such intense auditory processing. They hear almost how we see.", :user_id => 3, :article_id => 11, :rep => 5)
	Comment.create(:body => "Ashley ++", :user_id => 2, :article_id => 11, :rep => 5)
	Comment.create(:body => "I wonder if this will be the key to fast as light (or maybe even faster than light) human space travel", :user_id => 4, :article_id => 12, :rep => 5)
	Comment.create(:body => "Hah, maybe, but first we have to figure out how to travel thousands of lightyears towards the direction of the nearest black hole.", :user_id => 2, :article_id => 12, :rep => 5)
	Comment.create(:body => "Thanks, but I prefer to stay as far away from a black hole as possible.", :user_id => 3, :article_id => 12, :rep => 5)
	Comment.create(:body => "I really appreciate Newspeak for creating more fact based, decentralized and democratic citizen journalism!", :user_id => 4, :article_id => 13, :rep => 5)
	Comment.create(:body => "Me too! It's really important, you would never see a story like this on CNN.", :user_id => 3, :article_id => 13, :rep => 5)
	Comment.create(:body => "It's important to have a place for unpopular or unsponsored views to be expressed - it's one of the foundational principles of a healthy democracy.", :user_id => 2, :article_id => 13, :rep => 5)
	Comment.create(:body => "True, but it's equally important to have accurate and reliable information.", :user_id => 1, :article_id => 13, :rep => 5)
	Comment.create(:body => "Agreed, but that's why Newspeak features a reputation economy, so that the public can decide which content creators are reliable sources for accurate and well documented facts. By voting users columns up and down, the community self regulates. What other news source offers so much transparency and actual information?", :user_id => 2, :article_id => 13, :rep => 5)
	Comment.create(:body => "Exactly. Our hope is that through using our platform, the quality of journalism can improve, but also the quality of critical thought, as the general public learns how to distinguish real info from hype, speculation, and propaganda.", :user_id => 2, :article_id => 13, :rep => 5)
end

def make_article_tags
	ArticleTag.create(:article_id => 1, :tag_id => 2)
	ArticleTag.create(:article_id => 1, :tag_id => 4)
	ArticleTag.create(:article_id => 1, :tag_id => 5)
	ArticleTag.create(:article_id => 1, :tag_id => 6)
	ArticleTag.create(:article_id => 1, :tag_id => 7)
	ArticleTag.create(:article_id => 2, :tag_id => 2)
	ArticleTag.create(:article_id => 2, :tag_id => 8)
	ArticleTag.create(:article_id => 2, :tag_id => 9)
	ArticleTag.create(:article_id => 2, :tag_id => 60)
	ArticleTag.create(:article_id => 3, :tag_id => 2)
	ArticleTag.create(:article_id => 3, :tag_id => 70)
	ArticleTag.create(:article_id => 3, :tag_id => 71)
	ArticleTag.create(:article_id => 3, :tag_id => 72)
	ArticleTag.create(:article_id => 3, :tag_id => 69)
	ArticleTag.create(:article_id => 4, :tag_id => 1)
	ArticleTag.create(:article_id => 4, :tag_id => 73)
	ArticleTag.create(:article_id => 4, :tag_id => 74)
	ArticleTag.create(:article_id => 4, :tag_id => 75)
	ArticleTag.create(:article_id => 5, :tag_id => 16)
	ArticleTag.create(:article_id => 5, :tag_id => 41)
	ArticleTag.create(:article_id => 5, :tag_id => 56)
	ArticleTag.create(:article_id => 5, :tag_id => 75)
	ArticleTag.create(:article_id => 6, :tag_id => 16)
	ArticleTag.create(:article_id => 6, :tag_id => 41)
	ArticleTag.create(:article_id => 6, :tag_id => 56)
	ArticleTag.create(:article_id => 6, :tag_id => 75)
	ArticleTag.create(:article_id => 7, :tag_id => 27)
	ArticleTag.create(:article_id => 7, :tag_id => 28)
	ArticleTag.create(:article_id => 7, :tag_id => 29)
	ArticleTag.create(:article_id => 7, :tag_id => 30)
	ArticleTag.create(:article_id => 7, :tag_id => 21)
	ArticleTag.create(:article_id => 7, :tag_id => 22)
	ArticleTag.create(:article_id => 8, :tag_id => 27)
	ArticleTag.create(:article_id => 8, :tag_id => 28)
	ArticleTag.create(:article_id => 8, :tag_id => 29)
	ArticleTag.create(:article_id => 8, :tag_id => 30)
	ArticleTag.create(:article_id => 9, :tag_id => 20)
	ArticleTag.create(:article_id => 9, :tag_id => 11)
	ArticleTag.create(:article_id => 9, :tag_id => 34)
	ArticleTag.create(:article_id => 10, :tag_id => 34)
	ArticleTag.create(:article_id => 10, :tag_id => 21)
	ArticleTag.create(:article_id => 10, :tag_id => 11)
	ArticleTag.create(:article_id => 10, :tag_id => 77)
	ArticleTag.create(:article_id => 11, :tag_id => 34)
	ArticleTag.create(:article_id => 11, :tag_id => 35)
	ArticleTag.create(:article_id => 11, :tag_id => 36)
	ArticleTag.create(:article_id => 11, :tag_id => 37)
	ArticleTag.create(:article_id => 11, :tag_id => 38)
	ArticleTag.create(:article_id => 12, :tag_id => 44)
	ArticleTag.create(:article_id => 12, :tag_id => 48)
	ArticleTag.create(:article_id => 12, :tag_id => 49)
	ArticleTag.create(:article_id => 12, :tag_id => 50)
	ArticleTag.create(:article_id => 12, :tag_id => 12)
	ArticleTag.create(:article_id => 12, :tag_id => 11)
	ArticleTag.create(:article_id => 13, :tag_id => 65)
	ArticleTag.create(:article_id => 13, :tag_id => 66)
	ArticleTag.create(:article_id => 13, :tag_id => 68)
	ArticleTag.create(:article_id => 13, :tag_id => 69)
	ArticleTag.create(:article_id => 13, :tag_id => 70)
	ArticleTag.create(:article_id => 13, :tag_id => 71)
	ArticleTag.create(:article_id => 13, :tag_id => 72)
end

run_seed